package com.ztman.firectrl.controller;

import com.ztman.firectrl.model.entity.Attachment;
import com.ztman.firectrl.model.service.UploadService;
import com.ztman.firectrl.utils.JdbcUtil;
import com.ztman.firectrl.utils.JsonResult;
import com.ztman.firectrl.utils.UUIDGenerator;
import io.swagger.annotations.Api;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping(value = "import")
@Api(description = "文件上传")
public class ImportController {

	@Value("${prop.upload-folder}")
	private String UPLOAD_FOLDER;

	@Value("${prop.virtual-folder}")
	private String VIRTUAL_FOLDER;

	@Autowired
	private UploadService uploadService;

	@RequestMapping(value = "/singlefile", headers = "content-type=multipart/form-data", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult singlefile(MultipartFile file) throws IOException {
		JsonResult jsonResult = new JsonResult();
		if (Objects.isNull(file) || file.isEmpty()) {
			return jsonResult;
		}
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMM");
		String newDate = dateFormat.format(new Date());
		String filePath = UPLOAD_FOLDER + newDate + "//";
		Attachment attachment = new Attachment();

		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
		String url = UUIDGenerator.randomUUID()+"."+suffix;
		attachment.setFileName(file.getOriginalFilename());
		attachment.setFileSize(file.getSize());
		attachment.setFileSuffix(suffix);
		attachment.setUrl(newDate+"/"+ url);
		attachment.setCreateTime(new Date());


		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = (FileInputStream) file.getInputStream();
			fos = new FileOutputStream(new File(filePath + url));

			FileChannel inChannel = fis.getChannel();
			FileChannel outChannel = fos.getChannel();

			int capacity = 1024;
			ByteBuffer buffer = ByteBuffer.allocate(capacity);
			int len = -1;
			while( (len=inChannel.read(buffer))!=-1 ){
				buffer.flip();

				int length = 0;
				while (( length=outChannel.write(buffer) )!=0){

				}
				buffer.clear();
			}
			inChannel.close();
			outChannel.close();


			FileInputStream fis2 = new FileInputStream(new File(filePath + url));

			readExcelFile(fis2, url);





			return jsonResult;
		} catch (IOException e) {
			e.printStackTrace();
			return jsonResult;
		} finally {
			try {
				fis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return jsonResult;
		}
	}


	public void  readExcelFile(InputStream inputStream, String fileName){

		System.out.println(fileName);

		/**
		 * 这个inputStream文件可以来源于本地文件的流，
		 *  也可以来源与上传上来的文件的流，也就是MultipartFile的流，
		 *  使用getInputStream()方法进行获取。
		 */


		/**
		 * 然后再读取文件的时候，应该excel文件的后缀名在不同的版本中对应的解析类不一样
		 * 要对fileName进行后缀的解析
		 */
		Workbook workbook = null;
		try {
			//判断什么类型文件
			if (fileName.endsWith(".xls")) {
				workbook = new HSSFWorkbook(inputStream);
			} else if (fileName.endsWith(".xlsx")) {
				workbook = new XSSFWorkbook(inputStream);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (workbook == null) {
			return ;
		} else {
			//获取所有的工作表的的数量
			int numOfSheet = workbook.getNumberOfSheets();
			System.out.println(numOfSheet+"--->numOfSheet");


			//获取一个sheet也就是一个工作本。
			Sheet sheet = workbook.getSheetAt(0);
			if(sheet == null)
				return;
			//获取一个sheet有多少Row
			int lastRowNum = sheet.getLastRowNum();
			if(lastRowNum == 0)
				return;
			Row row;

			String sql = "";
			List<String> sqlList = new ArrayList();


			try{
				for (int j  = 1; j <= lastRowNum; j++) {
					row = sheet.getRow(j);
					if(row == null) {
						continue;
					}
					//获取一个Row有多少Cell
					short lastCellNum = row.getLastCellNum();


//					String name = "";
//					String code = "";
//					String fr = "";
//					String frdh = "";
//					String lxr = "";
//					String lxrdh="";
//					String daima = "";
//					String zhucedizhi = "";
//					String jingyingdizhi = "";
//					String ywlx = "";
//					String zhucequ = "";
//					String jingyingqu = "";
//					String jydzjd="";
//					String jydzwd="";
//					String zcdzjd="";
//					String zcdzwd="";
//
//
//					if(row.getCell(1)!=null){
//						row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
//						code = row.getCell(1).getStringCellValue().trim();
//					}
//					if(row.getCell(2)!=null){
//						row.getCell(2).setCellType(Cell.CELL_TYPE_STRING);
//						name = row.getCell(2).getStringCellValue().trim();
//					}
//					if(row.getCell(3)!=null){
//						row.getCell(3).setCellType(Cell.CELL_TYPE_STRING);
//						daima = row.getCell(3).getStringCellValue().trim();
//					}
//					if(row.getCell(4)!=null){
//						row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
//						zhucedizhi = row.getCell(4).getStringCellValue().trim();
//					}
//					if(row.getCell(5)!=null){
//						row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
//						jingyingdizhi = row.getCell(5).getStringCellValue().trim();
//					}
//					if(row.getCell(6)!=null){
//						row.getCell(6).setCellType(Cell.CELL_TYPE_STRING);
//						fr = row.getCell(6).getStringCellValue().trim();
//					}
//					if(row.getCell(7)!=null){
//						row.getCell(7).setCellType(Cell.CELL_TYPE_STRING);
//						frdh = row.getCell(7).getStringCellValue().trim();
//					}
//					if(row.getCell(8)!=null){
//						row.getCell(8).setCellType(Cell.CELL_TYPE_STRING);
//						lxr = row.getCell(8).getStringCellValue().trim();
//					}
//					if(row.getCell(9)!=null){
//						row.getCell(9).setCellType(Cell.CELL_TYPE_STRING);
//						lxrdh = row.getCell(9).getStringCellValue().trim();
//					}
//					if(row.getCell(11)!=null){
//						row.getCell(11).setCellType(Cell.CELL_TYPE_STRING);
//						zcdzjd = row.getCell(11).getStringCellValue().trim();
//					}
//					if(row.getCell(12)!=null){
//						row.getCell(12).setCellType(Cell.CELL_TYPE_STRING);
//						zcdzwd = row.getCell(12).getStringCellValue().trim();
//					}
//					if(row.getCell(13)!=null){
//						row.getCell(13).setCellType(Cell.CELL_TYPE_STRING);
//						jydzjd = row.getCell(13).getStringCellValue().trim();
//					}
//					if(row.getCell(14)!=null){
//						row.getCell(14).setCellType(Cell.CELL_TYPE_STRING);
//						jydzwd = row.getCell(14).getStringCellValue().trim();
//					}
//					if(row.getCell(17)!=null){
//						row.getCell(17).setCellType(Cell.CELL_TYPE_STRING);
//						ywlx = row.getCell(17).getStringCellValue().trim();
//					}
//					if(row.getCell(18)!=null){
//						row.getCell(18).setCellType(Cell.CELL_TYPE_STRING);
//						zhucequ = row.getCell(18).getStringCellValue().trim();
//					}
//					if(row.getCell(19)!=null){
//						row.getCell(19).setCellType(Cell.CELL_TYPE_STRING);
//						jingyingqu = row.getCell(19).getStringCellValue().trim();
//					}
//
//					sql = "insert into t_fc_company(COMPANY_NO,COMPANY_NAME,ENTERPRISE_CODE,REGISTER_DETAIL_ADDRESS,MANAGE_DETAIL_ADDRESS,LEGAL_PERSON_NAME,LEGAL_PERSON_MOBILE,\n" +
//							"CONTACT_PERSON_NAME,CONTACT_PERSON_MOBILE,BUSINESS_TYPE,REGISTER_LON,REGISTER_LAT,MANAGE_LON,MANAGE_LAT,REGISTER_DISTRICT,MANAGE_DISTRICT) values" +
//							"('"+code+"','"+name+"','"+daima+"','"+zhucedizhi+"','"+jingyingdizhi+"','"+fr+"','"+frdh+"','"+lxr+"','"+lxrdh+"','"+ywlx+"','"+zcdzjd+"','"+zcdzwd+"','"+jydzjd+"','"+jydzwd+"','"+zhucequ+"','"+jingyingqu+"')";
//					System.out.println(sql);
//

//					String name = "";
//					String fr = "";
//					String frdh = "";
//					String lxr = "";
//					String lxrdh="";
//					String jydzjd="";
//					String jydzwd="";
//					String zcdzjd="";
//					String zcdzwd="";
//
//
//					if(row.getCell(0)!=null){
//						row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
//						name = row.getCell(0).getStringCellValue().trim();
//					}
//					if(row.getCell(1)!=null){
//						row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
//						fr = row.getCell(1).getStringCellValue().trim();
//					}
//					if(row.getCell(2)!=null){
//						row.getCell(2).setCellType(Cell.CELL_TYPE_STRING);
//						frdh = row.getCell(2).getStringCellValue().trim();
//					}
//					if(row.getCell(3)!=null){
//						row.getCell(3).setCellType(Cell.CELL_TYPE_STRING);
//						lxr = row.getCell(3).getStringCellValue().trim();
//					}
//					if(row.getCell(4)!=null){
//						row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
//						lxrdh = row.getCell(4).getStringCellValue().trim();
//					}
//					if(row.getCell(6)!=null){
//						row.getCell(6).setCellType(Cell.CELL_TYPE_STRING);
//						jydzjd = row.getCell(6).getStringCellValue().trim();
//					}
//					if(row.getCell(7)!=null){
//						row.getCell(7).setCellType(Cell.CELL_TYPE_STRING);
//						jydzwd = row.getCell(7).getStringCellValue().trim();
//					}
//
//					sql = "update t_fc_company set ESTABLI_DATE='"+fr+"',REGISTER_CAPITAL='"+frdh+"',ENTERPRISE_SCOPE='"+lxr+"',ENTERPRISE_TYPE='"+lxrdh+"',BUSINESS_START_TIME='"+jydzjd+"',BUSINESS_END_TIME='"+jydzwd+"' where company_name='"+name+"';";
//					System.out.println(sql);


//					String name = "";
//					String fr = "";
//					String frdh = "";
//					String lxr = "";
//					String lxrdh="";
//					String jydzjd="";
//					String jydzwd="";
//					String zcdzjd="";
//					String zcdzwd="";
//
//					if(row.getCell(0)!=null){
//						row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
//						name = row.getCell(0).getStringCellValue().trim();
//					}
//					if(row.getCell(1)!=null){
//						row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
//						fr = row.getCell(1).getStringCellValue().trim();
//					}
//					if(row.getCell(2)!=null){
//						row.getCell(2).setCellType(Cell.CELL_TYPE_STRING);
//						frdh = row.getCell(2).getStringCellValue().trim();
//					}
//					if(row.getCell(3)!=null){
//						row.getCell(3).setCellType(Cell.CELL_TYPE_STRING);
//						lxr = row.getCell(3).getStringCellValue().trim();
//					}
//					if(row.getCell(4)!=null){
//						row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
//						lxrdh = row.getCell(4).getStringCellValue().trim();
//					}
//					if(row.getCell(5)!=null){
//						row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
//						jydzjd = row.getCell(5).getStringCellValue().trim();
//					}
//					if(row.getCell(6)!=null){
//						row.getCell(6).setCellType(Cell.CELL_TYPE_STRING);
//						jydzwd = row.getCell(6).getStringCellValue().trim();
//					}
////					if(row.getCell(7)!=null){
////						row.getCell(7).setCellType(Cell.CELL_TYPE_STRING);
////						jydzwd = row.getCell(7).getStringCellValue().trim();
////					}
//
//					sql = "update t_fc_company set CREDIT_RATING='"+jydzjd+"',REGISTER_START_TIME='"+frdh+"',REGISTER_END_TIME='"+lxr+"',CERTIFICATE_NUMBER='"+lxrdh+"',FIRE_CTRL_TYPE='"+jydzwd+"' where company_name='"+name+"';";
//					System.out.println(sql);
//

					String name = "";
					String fr = "";
					String frdh = "";
					String lxr = "";
					String lxrdh="";
					String jydzjd="";
					String jydzwd="";
					String zcdzjd="";
					String zcdzwd="";

					if(row.getCell(0)!=null){
						row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
						name = row.getCell(0).getStringCellValue().trim();
					}
					if(row.getCell(1)!=null){
						row.getCell(1).setCellType(Cell.CELL_TYPE_STRING);
						fr = row.getCell(1).getStringCellValue().trim();
					}
					if(row.getCell(2)!=null){
						row.getCell(2).setCellType(Cell.CELL_TYPE_STRING);
						frdh = row.getCell(2).getStringCellValue().trim();
					}
					if(row.getCell(3)!=null){
						row.getCell(3).setCellType(Cell.CELL_TYPE_STRING);
						lxr = row.getCell(3).getStringCellValue().trim();
					}
					if(row.getCell(4)!=null){
						row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
						lxrdh = row.getCell(4).getStringCellValue().trim();
					}
					if(row.getCell(5)!=null){
						row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
						jydzjd = row.getCell(5).getStringCellValue().trim();
					}
					if(row.getCell(15)!=null){
						row.getCell(15).setCellType(Cell.CELL_TYPE_STRING);
						jydzwd = row.getCell(15).getStringCellValue().trim();
					}

					sql = "update t_fc_company set ext1='"+jydzwd+"' where company_name='"+frdh+"';";
					System.out.println(sql);

					sqlList.add(sql);
				}
				save(sqlList);
			}catch (Exception ex){
				ex.printStackTrace();
			}


			//遍历表
//			for (int i = 0; i < numOfSheet; i++) {
//				//获取一个sheet也就是一个工作本。
//				Sheet sheet = workbook.getSheetAt(i);
//				if(sheet == null) continue;
//				//获取一个sheet有多少Row
//				int lastRowNum = sheet.getLastRowNum();
//				if(lastRowNum == 0) continue;
//				Row row;
//				for (int j  = 1; j <= lastRowNum; j++) {
//					row = sheet.getRow(j);
//					if(row == null) {
//						continue;
//					}
//					//获取一个Row有多少Cell
//					short lastCellNum = row.getLastCellNum();
//					for (int k = 0; k <= lastCellNum; k++) {
//						if(row.getCell(k)==null) {
//							continue;
//						}
//						row.getCell(k).setCellType(Cell.CELL_TYPE_STRING);
//						String res = row.getCell(k).getStringCellValue().trim();
//						//打印出cell(单元格的内容)
//						System.out.println(res);
//					}
//
//				}
//			}
		}

	}



	private static void save(List<String> list) {
		//SQL语句  
		Connection conn = JdbcUtil.getConn();
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			System.out.println(list.size());
			for (String s: list) {
				stmt.addBatch(s);
			}

			stmt.executeBatch();

			stmt.close();
			conn.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
}
