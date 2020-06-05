package com.ztman.firectrl.controller;

import com.ztman.firectrl.model.entity.Attachment;
import com.ztman.firectrl.model.service.UploadService;
import com.ztman.firectrl.utils.JsonResult;
import com.ztman.firectrl.utils.UUIDGenerator;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping(value = "upload")
@Api(description = "文件上传")
public class UploadController {

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


//			byte[] bytes = file.getBytes();
//			Path path = Paths.get(filePath + url);
//			//如果没有files文件夹，则创建
//			if (!Files.isWritable(path)) {
//				Files.createDirectories(Paths.get(filePath));
//			}
//			//文件写入指定路径
//			Files.write(path, bytes);

			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");

			this.uploadService.add(attachment);

			Map map = new HashMap();
			map.put("attachmentId", attachment.getId());
			map.put("filePath", VIRTUAL_FOLDER.replaceAll("\\*","") + newDate+"/"+url);
			jsonResult.setResult(map);
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
}
