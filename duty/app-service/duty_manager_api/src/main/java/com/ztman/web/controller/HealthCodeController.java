package com.ztman.web.controller;

import com.ztman.model.service.HealthCodeService;
import com.ztman.model.service.OsInspectionService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
@RequestMapping(value = "healthCode")
@Api(description = "健康码")
public class HealthCodeController extends BaseController {

	@Autowired
	private HealthCodeService healthCodeService;

	@Autowired
	private OsInspectionService osInspectionService;

	@ApiOperation("查询健康码数据")
	@RequestMapping(value = "/selectUpToDate", method = RequestMethod.GET)
	private JsonResult selectUpToDate() {
		HashMap<String, Object> map = new HashMap<String, Object>();

		HashMap<String, Object> healthCodeMap = this.healthCodeService.selectUpToDate();
		HashMap<String, Object> osInspectionMap = this.osInspectionService.selectUpToDate();

		map.put("healthCode", healthCodeMap);
		map.put("osInspection", osInspectionMap);

		JsonResult jsonResult = new JsonResult();
		if (map != null && map.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}

		return jsonResult;
	}

}
