package com.ztman.web.controller;

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
@RequestMapping(value = "osInspection")
@Api(description = "站点检测")
public class OsInspectionController extends BaseController {

	@Autowired
	private OsInspectionService osInspectionService;

	@ApiOperation("查询站点检测数据")
	@RequestMapping(value = "/selectUpToDate", method = RequestMethod.GET)
	private JsonResult selectUpToDate() {
		HashMap<String, Object> map = this.osInspectionService.selectUpToDate();

		JsonResult jsonResult = new JsonResult();
		if (map != null && map.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}

		return jsonResult;
	}

}
