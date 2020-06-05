package com.ztman.web.controller;

import com.ztman.exception.FztException;
import com.ztman.model.entity.Attendance;
import com.ztman.model.entity.RegisterUser;
import com.ztman.model.entity.UserAssist;
import com.ztman.model.service.AttendanceService;
import com.ztman.model.service.UserService;
import com.ztman.utils.JsonResult;
import com.ztman.utils.MD5Util;
import com.ztman.utils.RedisService;
import com.ztman.utils.TokenUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "user")
@Api(description = "用户管理")
public class UserController extends BaseController {

	@Autowired
	private UserService userService;

	@Autowired
	private AttendanceService attendanceService;

	@Autowired
	private RedisService redisService;


	@ApiOperation("登录")
	@RequestMapping(value = "login", method = RequestMethod.POST)
	private JsonResult login(@RequestBody LoginParam param) {
		UserAssist userAssist = this.userService.login(param.getUsername(), param.getPassword());


		JsonResult jsonResult = new JsonResult();
		jsonResult.setResult("用户名或密码错误");
		if (userAssist != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(userAssist);

			String token = TokenUtil.genToken();
			userAssist.setToken(token);
			this.redisService.set(token, userAssist);
		}

		return jsonResult;
	}

	@Data
	public static class LoginParam{
		private String username;
		private String password;
	}


	@ApiOperation("查询人员数量")
	@RequestMapping(value = "userDutyNum", method = RequestMethod.GET)
	private JsonResult userDutyNum() {
		List<HashMap<String, Object>> all = this.userService.selectUserCount();
		List<HashMap<String, Object>> site = this.userService.selectUserBySite();

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("all", all);
		map.put("site", site);

		JsonResult jsonResult = new JsonResult();
		if (map != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}

		return jsonResult;
	}


	@ApiOperation("更新人员上岗状态（1：上岗  0：离岗）")
	@RequestMapping(value = "updateDutyStatus", method = RequestMethod.POST)
	private JsonResult updateDutyStatus(@RequestBody UpdateDutyStatusParam param) {
		int row = this.userService.updateDutyStatus(param.getUserId(), param.getIsDuty(), param.getLon(), param.getLat());
		//保存打卡记录
		Attendance attendance = new Attendance();
        Date atTime = new Date();
		attendance.setAtTime(atTime);
		attendance.setType(param.getIsDuty());
		attendance.setUserId(param.getUserId());
        //判断是否异常考勤
        String abnormal = this.attendanceService.dutyAbnormal(atTime, param.getUserId(), param.getIsDuty());
        attendance.setAbnormal(abnormal);

		this.attendanceService.add(attendance);
		JsonResult jsonResult = new JsonResult();

		if (row > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
		}
		return jsonResult;
	}

	@Data
	public static class UpdateDutyStatusParam{
		@ApiModelProperty(value = "userId")
		private Long userId;
		@ApiModelProperty(value = "是否上岗")
		private String isDuty;
		@ApiModelProperty(value = "经度")
		private String lon;
		@ApiModelProperty(value = "纬度")
		private String lat;
	}

	@ApiOperation("值班统计")
	@RequestMapping(value = "dutyCount", method = RequestMethod.GET)
	private JsonResult dutyCount(@RequestParam Long userId, @RequestParam String month) {
		JsonResult jsonResult = new JsonResult();
		Map map = new HashMap();

		map.put("cqts", this.userService.queryCqts(userId, month));
		map.put("cqbc", this.userService.queryCqbc(userId, month));
		map.put("cdcs", this.userService.queryCdcs(userId, month));
		map.put("ztcs", this.userService.queryZtcs(userId, month));

		if (map != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}


	@ApiOperation("修改密码")
	@RequestMapping(value = "changePw", method = RequestMethod.POST)
	private JsonResult changePw(@RequestBody ChangePwParam param) {
		JsonResult jsonResult = new JsonResult();
		String msg = this.userService.changePw(param.getUsername(), param.getOpw(), param.getNpw());

		if (msg != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(msg);
		}
		return jsonResult;
	}

	@Data
	public static class ChangePwParam{
		@ApiModelProperty(value = "用户名")
		private String username;
		@ApiModelProperty(value = "原密码")
		private String opw;
		@ApiModelProperty(value = "新密码")
		private String npw;
	}


	@ApiOperation("发送短信通知")
	@RequestMapping(value = "sendSms", method = RequestMethod.POST)
	private JsonResult sendSms(@RequestBody SendSmsParam param) {
		JsonResult jsonResult = new JsonResult();
		boolean flag = this.userService.sendSms(param.getDeptIds(), param.getContent());

		jsonResult.setResult("发送失败");
		if(flag){
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult("发送成功");
		}

		return jsonResult;
	}

	@Data
	public static class SendSmsParam {
		@ApiModelProperty(value = "队伍ID")
		private Long [] deptIds;
		@ApiModelProperty(value = "短信内容")
		private String content;
	}


//	@ApiOperation("重置密码")
//	@RequestMapping(value = "resetPw", method = RequestMethod.POST)
//	private JsonResult resetPw(@RequestParam Long userId) {
//		JsonResult jsonResult = new JsonResult();
//
//		List<User> users = this.userService.selectUser();
//		for (User user: users) {
//			this.userService.resetPw(user.getUserId(), MD5Util.encrypt(user.getUsername(),"123456"));
//		}
//
//		jsonResult.setResultCode(200);
//		jsonResult.setResultName("success");
//
//		return jsonResult;
//	}

	@ApiOperation("注册获取短信验证码")
	@GetMapping("sms/captcha")
	public JsonResult smsCaptcha(@RequestParam String phone) throws IOException {
		JsonResult jsonResult = new JsonResult();
		String msg = "验证码发送失败";
		boolean isExists = this.userService.isUserExists(phone);
		if(isExists) {
			msg = "该手机号已存在";
		}else{
			boolean flag = userService.smsCaptcha(phone);
			if(flag) {
				msg = "验证码已发送";
				jsonResult.setResultCode(200);
				jsonResult.setResultName("success");
			}
		}

		jsonResult.setResult(msg);
		return jsonResult;
	}

	@ApiOperation("验证注册手机验证码")
	@PostMapping("verificationCode")
	public JsonResult verificationCodeLogin(@RequestBody VerificationCodeLoginParam param ) {
		JsonResult jsonResult = new JsonResult();
		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		//0表示验证码正确
		jsonResult.setResult("0");

		try{
			//判断验证码是否正确
			this.userService.checkCpatcha(param.getPhone(), param.getVerifyCode());
		}catch (FztException ex){
			jsonResult.setResult(ex.getMessage());
		}
		return jsonResult;
	}

	@Data
	public static class VerificationCodeLoginParam{
		private String phone;
		private String verifyCode;
	}

	@ApiOperation("获取行政区域")
	@GetMapping("register/getAdivision")
	public JsonResult getAdivision() throws IOException {
		JsonResult jsonResult = new JsonResult();
		List<HashMap<String, Object>> list = userService.getAdivision();

		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		jsonResult.setResult(list);
		return jsonResult;
	}

	@ApiOperation("获取业务角色")
	@GetMapping("register/getBnsSystem")
	public JsonResult getBnsSystem(@RequestParam Long adivisionId) throws IOException {
		JsonResult jsonResult = new JsonResult();
		List<HashMap<String, Object>> list = userService.getBnsSystem(adivisionId);

		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		jsonResult.setResult(list);
		return jsonResult;
	}

	@ApiOperation("获取公司")
	@GetMapping("register/getCompany")
	public JsonResult getCompany(@RequestParam Long bnsSystemId) throws IOException {
		JsonResult jsonResult = new JsonResult();
		List<HashMap<String, Object>> list = userService.getCompany(bnsSystemId);

		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		jsonResult.setResult(list);
		return jsonResult;
	}

	@ApiOperation("获取队伍")
	@GetMapping("register/getCompanyTeam")
	public JsonResult getCompanyTeam(@RequestParam Long companyId) throws IOException {
		JsonResult jsonResult = new JsonResult();
		List<HashMap<String, Object>> list = userService.getCompanyTeam(companyId, 0L);

		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		jsonResult.setResult(list);
		return jsonResult;
	}

	@ApiOperation("获取职务")
	@GetMapping("register/getPostiton")
	public JsonResult getPostiton(@RequestParam Long adivisionId,@RequestParam Long bnsSystemId,@RequestParam Long companyId) throws IOException {
		JsonResult jsonResult = new JsonResult();
		List<HashMap<String, Object>> list = userService.getPostiton(adivisionId, bnsSystemId, companyId);

		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		jsonResult.setResult(list);
		return jsonResult;
	}

	@ApiOperation("保存用户信息")
	@PostMapping("register/addUser")
	public JsonResult addUser(@RequestBody RegisterUser user) {
		JsonResult jsonResult = new JsonResult();

		boolean isExists = this.userService.isUserExists(user.getUsername());
		if(isExists) {
			jsonResult.setResult("已注册成功，请登录");
		}else{
			user.setMobile(user.getUsername());
			user.setStatus("1");
			user.setIsDuty("0");
			String pwd = MD5Util.encrypt(user.getUsername(), user.getPassword());
			user.setPassword(pwd);
			user.setCreateTime(new Date());

			int result = this.userService.register(user);
			if(result > 0){
				jsonResult.setResultCode(200);
				jsonResult.setResultName("success");
				jsonResult.setResult(user.getUserId());
			}
		}

		return jsonResult;
	}

	@ApiOperation("修改密码")
	@PostMapping("register/updatePwd")
	public JsonResult updatePwd(@RequestBody UpdatePwdParam param) {
		JsonResult jsonResult = new JsonResult();

		int result = this.userService.updatePwd(param.getUserId(), param.getUsername(), param.getPwd());
		if(result > 0){
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
		}
		return jsonResult;
	}

	@Data
	public static class UpdatePwdParam{
		private Long userId;
		private String username;
		private String pwd;
	}


	@ApiOperation("修改密码获取短信验证码")
	@GetMapping("sms/resetPw")
	public JsonResult resetPw(@RequestParam String phone) throws IOException {
		JsonResult jsonResult = new JsonResult();
		String msg = "验证码发送失败";
		boolean isExists = this.userService.isUserExists(phone);
		if(!isExists) {
			msg = "该手机号不存在";
		}else{
			boolean flag = userService.smsResetPw(phone);
			if(flag) {
				msg = "验证码已发送";
				jsonResult.setResultCode(200);
				jsonResult.setResultName("success");
			}
		}

		jsonResult.setResult(msg);
		return jsonResult;
	}

	@ApiOperation("验证重置密码手机验证码")
	@PostMapping("verificationCodeResetPw")
	public JsonResult verificationCodeResetPw(@RequestBody VerificationCodeLoginParam param ) {
		JsonResult jsonResult = new JsonResult();
		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		//0表示验证码正确
		jsonResult.setResult("0");

		try{
			//判断验证码是否正确
			this.userService.checkResetpwSMS(param.getPhone(), param.getVerifyCode());
		}catch (FztException ex){
			jsonResult.setResult(ex.getMessage());
		}
		return jsonResult;
	}

	@ApiOperation("重置密码")
	@RequestMapping(value = "resetPw", method = RequestMethod.POST)
	private JsonResult resetPw(@RequestBody ResetPwParam param) {
		JsonResult jsonResult = new JsonResult();

		int row = this.userService.resetPw(param.getPhone(), MD5Util.encrypt(param.getPhone(),param.getPassword()));

		if (row > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
		}
		return jsonResult;
	}

	@Data
	public static class ResetPwParam{
		@ApiModelProperty(value = "手机号")
		private String phone;
		@ApiModelProperty(value = "密码")
		private String password;
	}

}
