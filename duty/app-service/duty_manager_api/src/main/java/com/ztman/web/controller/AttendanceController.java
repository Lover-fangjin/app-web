package com.ztman.web.controller;

import com.ztman.model.service.AttendanceService;
import com.ztman.model.service.DutyInfoService;
import com.ztman.utils.DateUtil;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "attendance")
@Api(description = "打卡记录")
public class AttendanceController extends BaseController {

	@Autowired
	private AttendanceService attendanceService;

	@Autowired
	private DutyInfoService dutyInfoService;

	@ApiOperation("查询当日打卡记录")
	@RequestMapping(value = "/selectToday", method = RequestMethod.GET)
	private JsonResult selectToday(@RequestParam Long userId,@RequestParam String date) {
		Map<String, Object> map = new HashMap<String, Object>();

		String cdate = DateUtil.timeStamp2Date(date,"yyyy-MM-dd");

		HashMap<String, Object> duty = this.dutyInfoService.queryDutyByUserId(userId, cdate);
		HashMap<String, Object> att = this.attendanceService.queryByUserId(userId, cdate);


		map.put("duty", duty);
		map.put("att", att);

		JsonResult jsonResult = new JsonResult();
		if (map != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}

		return jsonResult;
	}

}
