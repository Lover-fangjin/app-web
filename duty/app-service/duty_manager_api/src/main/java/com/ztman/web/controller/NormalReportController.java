package com.ztman.web.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ztman.model.entity.NormalReport;
import com.ztman.model.entity.NormalReportAssist;
import com.ztman.model.service.NormalReportService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "normal")
@Api(description = "普通上报")
public class NormalReportController extends BaseController {

	@Autowired
	private NormalReportService normalReportService;

	@ApiOperation("添加")
	@RequestMapping(value = "/normalReport", method = RequestMethod.POST)
	private JsonResult add(@RequestBody NormalReport normalReport) {
		int row = this.normalReportService.add(normalReport);
		JsonResult jsonResult = new JsonResult();
		if (row > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
		}

		return jsonResult;
	}

	@ApiOperation("查询所有")
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	private JsonResult queryAll(@RequestParam int pageNum,@RequestParam int pageSize,@RequestParam(required = false) Long userId) {
		PageHelper.startPage(pageNum,pageSize);

		List<HashMap<String, Object>> list = this.normalReportService.queryAll(userId);

		PageInfo<HashMap<String, Object>> pageInfo = new PageInfo<HashMap<String, Object>>(list);

		JsonResult jsonResult = new JsonResult();
		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		if (list != null && list.size() > 0) {
			jsonResult.setResult(pageInfo);
		}
		return jsonResult;
	}

	@ApiOperation("查询当前人员当日登记数")
	@RequestMapping(value = "/todayTotal", method = RequestMethod.GET)
	private JsonResult todayTotal(@RequestParam String userId) {
		Map map = new HashMap<String, Object>();
		int total = this.normalReportService.todayTotal(userId);

		map.put("total", total);
		JsonResult jsonResult = new JsonResult();
		if (map != null && map.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}

	@ApiOperation("查询信息登记详情")
	@RequestMapping(value = "/queryById", method = RequestMethod.GET)
	private JsonResult queryById(@RequestParam Long reportId) {
		NormalReportAssist normalReportAssist = this.normalReportService.queryById(reportId);
		JsonResult jsonResult = new JsonResult();
		if (normalReportAssist != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(normalReportAssist);
		}
		return jsonResult;
	}

}
