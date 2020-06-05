package com.ztman.web.controller;

import com.ztman.model.service.BnsSystemService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value = "bnsSystem")
@Api(description = "业务体系")
public class BnsSystemController extends BaseController {

	@Autowired
	private BnsSystemService bnsSystemService;

	@ApiOperation("查询所有业务体系")
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	private JsonResult queryAll(@RequestParam Long userId) {
		List<HashMap<String, Object>> rtnList = new ArrayList<HashMap<String, Object>>();
		List<HashMap<String, Object>> list = this.bnsSystemService.queryAll(userId);

		for (HashMap<String, Object> map: list) {
			int total = this.bnsSystemService.queryUserCountByBnsId((Long) map.get("id"));

			map.put("total", total);
			map.put("deptId", -1);
			rtnList.add(map);
		}

		JsonResult jsonResult = new JsonResult();
		if (rtnList != null && rtnList.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(rtnList);
		}

		return jsonResult;
	}


	@ApiOperation("查询大队")
	@RequestMapping(value = "/selectDeptByBnsId", method = RequestMethod.GET)
	private JsonResult selectDeptByBnsId(@RequestParam Long userId) {
		List<HashMap<String, Object>> list = this.bnsSystemService.queryDeptByUserId(userId);

		list = this.bnsSystemService.queryUserCountByDeptId(list);

		JsonResult jsonResult = new JsonResult();
		if (list != null && list.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(list);
		}

		return jsonResult;
	}

	@ApiOperation("查询队伍(新)")
	@RequestMapping(value = "/selectDeptByParentId", method = RequestMethod.GET)
	private JsonResult selectDeptByParentId(@RequestParam Long userId, @RequestParam Long deptId) {
		List<HashMap<String, Object>> list = null;
		if(deptId==-1){
			list = this.bnsSystemService.queryDeptByUserId(userId);

			list = this.bnsSystemService.queryUserCountByDeptId(list);
		}else{
			list = this.bnsSystemService.queryZd(userId, deptId);

			list = this.bnsSystemService.queryUserCountByDeptId(list);
		}


		JsonResult jsonResult = new JsonResult();
		if (list != null && list.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(list);
		}

		return jsonResult;
	}


}
