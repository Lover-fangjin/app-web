package com.ztman.firectrl.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ztman.firectrl.model.service.CompanyService;
import com.ztman.firectrl.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "company")
@Api(description = "会员公司信息")
public class CompanyController {

	@Autowired
	private CompanyService companyService;

	@Value("${prop.upload-folder}")
	private String UPLOAD_FOLDER;

	@Value("${prop.virtual-folder}")
	private String VIRTUAL_FOLDER;


	@ApiOperation("查询地区统计树")
	@RequestMapping(value = "getCountList", method = RequestMethod.GET)
	public JsonResult getCountList() {
		String type="",ckey="";
		List<HashMap<String, Object>> cityList = this.companyService.getCountList(type, ckey);

		for (Map city : cityList) {
			ckey = (String) city.get("name");
			type = (String) city.get("type");
			List<HashMap<String, Object>> districtList = this.companyService.getCountList(type, ckey);
			for (Map district : districtList) {
				ckey = (String) district.get("name");
				type = (String) district.get("type");
				List<HashMap<String, Object>> streetList = this.companyService.getCountList(type, ckey);
				district.put("children", streetList);
			}
			city.put("children", districtList);
		}

		JsonResult jsonResult = new JsonResult();
		if (cityList != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(cityList);
		}
		return jsonResult;
	}

	@ApiOperation("查询公司列表")
	@RequestMapping(value = "getCompanyList", method = RequestMethod.GET)
	public JsonResult getCompanyList(@RequestParam(required = false) String type,
									 @RequestParam(required = false) String key,
									 @RequestParam int pageNum,
									 @RequestParam int pageSize) {

		PageHelper.startPage(pageNum,pageSize);
		List<HashMap<String, Object>> companyList = this.companyService.getCompanyList(type, key);

		PageInfo<HashMap<String, Object>> pageInfo = new PageInfo<HashMap<String, Object>>(companyList);
		JsonResult jsonResult = new JsonResult();
		if (companyList != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(pageInfo);
		}
		return jsonResult;
	}

	@ApiOperation("查询公司详情")
	@RequestMapping(value = "getCompanyDetail", method = RequestMethod.GET)
	public JsonResult getCompanyDetail(@RequestParam Long cid) {
		Map<String,Object> map = new HashMap<String,Object>();

		HashMap<String, Object> company = this.companyService.getCompanyDetail(cid);
		String companyName = (String) company.get("company_name");

		String companyDetail = (String) company.get("company_detail");
		company.put("company_detail", "　　"+companyDetail);

		//二维码
		List<String> qrList = new ArrayList<String>();
		//资质
		List<String> qualiList = new ArrayList<String>();

		try{
			//真实路径
			String qrPath = UPLOAD_FOLDER.replaceAll("\\*","")+companyName+"/二维码/";
			String qualiPath = UPLOAD_FOLDER.replaceAll("\\*","")+companyName+"/资质/";

			//访问路径
			String visualQrPath = VIRTUAL_FOLDER.replaceAll("\\*","")+companyName+"/二维码/";
			String visualQualiPath = VIRTUAL_FOLDER.replaceAll("\\*","")+companyName+"/资质/";

			//遍历二维码
			File qrFile = new File(qrPath);
			File[] qrFiles = qrFile.listFiles();
			for(File f : qrFiles){
				if(!f.isDirectory()) {
					qrList.add(visualQrPath+f.getName());
				}
			}

			//遍历资质
			File qualiFile = new File(qualiPath);
			File[] qualiFiles = qualiFile.listFiles();
			for(File f : qualiFiles){
				if(!f.isDirectory()) {
					qualiList.add(visualQualiPath+f.getName());
				}
			}
		}catch (Exception ex){
			ex.printStackTrace();
		}

		map.put("company", company);
		map.put("qrList", qrList);
		map.put("qualiList", qualiList);

		JsonResult jsonResult = new JsonResult();
		if (company != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}



	@ApiOperation("获取联想值")
	@RequestMapping(value = "getAssociKey", method = RequestMethod.GET)
	public JsonResult getAssociKey(@RequestParam String ckey) {
		List<HashMap<String, Object>> list = this.companyService.getAssociKey(ckey);

		JsonResult jsonResult = new JsonResult();
		if (list != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(list);
		}
		return jsonResult;
	}


	@ApiOperation("搜索公司列表")
	@RequestMapping(value = "queryCompanyList", method = RequestMethod.GET)
	public JsonResult queryCompanyList(@RequestParam(required = false) String key,
									 @RequestParam(required = false) String value,
									 @RequestParam int pageNum,
									 @RequestParam int pageSize) {

		PageHelper.startPage(pageNum,pageSize);
		List<HashMap<String, Object>> companyList = this.companyService.queryCompanyList(key, value);

		PageInfo<HashMap<String, Object>> pageInfo = new PageInfo<HashMap<String, Object>>(companyList);
		JsonResult jsonResult = new JsonResult();
		if (companyList != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(pageInfo);
		}
		return jsonResult;
	}


	@ApiOperation("获取汇总饼图结果数据")
	@RequestMapping(value = "getCharts", method = RequestMethod.GET)
	public JsonResult getCharts(@RequestParam(required = false) String type,
									 @RequestParam(required = false) String key) {
		Map map = new HashMap();

		List<HashMap<String, Object>> creditRating = this.companyService.getCreditRatingChart(type, key);
		List<HashMap<String, Object>> businessTypeGj = this.companyService.getBusinessTypeChartGj(type, key);
		List<HashMap<String, Object>> businessTypeXq = this.companyService.getBusinessTypeChartXq(type, key);

		map.put("creditRating", creditRating);
		map.put("businessTypeGj", businessTypeGj);
		map.put("businessTypeXq", businessTypeXq);
		JsonResult jsonResult = new JsonResult();
		if (map != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}

	@ApiOperation("根据业务类型获取公司列表")
	@RequestMapping(value = "queryCompanyListByBnsType", method = RequestMethod.GET)
	public JsonResult queryCompanyListByBnsType(@RequestParam(required = false) String type,
									 @RequestParam(required = false) String key,
									 @RequestParam String bnsClass,
									 @RequestParam String bnsType,
									 @RequestParam int pageNum,
									 @RequestParam int pageSize) {

		PageHelper.startPage(pageNum,pageSize);
		List<HashMap<String, Object>> companyList = this.companyService.queryCompanyListByBnsType(type,key,bnsClass,bnsType);

		PageInfo<HashMap<String, Object>> pageInfo = new PageInfo<HashMap<String, Object>>(companyList);
		JsonResult jsonResult = new JsonResult();
		if (companyList != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(pageInfo);
		}
		return jsonResult;
	}
}