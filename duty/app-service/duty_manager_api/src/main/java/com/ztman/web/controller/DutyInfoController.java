package com.ztman.web.controller;

import com.ztman.model.service.DutyInfoService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value = "dutyInfo")
@Api(description = "值班信息")
public class DutyInfoController extends BaseController {

	@Autowired
	private DutyInfoService dutyInfoService;

	@ApiOperation("查询所有")
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	private JsonResult queryAll() {
		List<HashMap<String, Object>> list = this.dutyInfoService.queryAll();

		JsonResult jsonResult = new JsonResult();
		if (list != null && list.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(list);
		}

		return jsonResult;
	}

}
