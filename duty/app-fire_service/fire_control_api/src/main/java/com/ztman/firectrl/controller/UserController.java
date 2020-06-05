package com.ztman.firectrl.controller;

import com.ztman.firectrl.model.entity.UserAssist;
import com.ztman.firectrl.model.service.UserService;
import com.ztman.firectrl.utils.JsonResult;
import com.ztman.firectrl.utils.RedisService;
import com.ztman.firectrl.utils.TokenUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "user")
@Api(description = "用户管理")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private RedisService redisService;


	@ApiOperation("登录")
	@RequestMapping(value = "login", method = RequestMethod.POST)
	private JsonResult login(@RequestBody LoginParam param) {
		UserAssist userAssist = this.userService.login(param.getUsername(), param.getPassword());

		JsonResult jsonResult = new JsonResult();
		if (userAssist != null) {

			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(userAssist);
			String token = TokenUtil.genToken();
			userAssist.setToken(token);
		}

		return jsonResult;
	}

	@Data
	public static class LoginParam{
		private String username;
		private String password;
	}
}
