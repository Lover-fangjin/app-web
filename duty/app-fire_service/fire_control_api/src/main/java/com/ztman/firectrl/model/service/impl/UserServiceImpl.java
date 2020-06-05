package com.ztman.firectrl.model.service.impl;

import com.ztman.firectrl.model.dao.UserMapper;
import com.ztman.firectrl.model.entity.UserAssist;
import com.ztman.firectrl.model.service.UserService;
import com.ztman.firectrl.utils.MD5Util;
import com.ztman.firectrl.utils.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private RedisService redisService;


	@Value("${febs.auth.code.sms}")
	private String sms;
	@Value("${febs.auth.code.surl}")
	private String surl;



	public UserAssist login(String username, String password) {
		String np = MD5Util.encrypt(username, password);
		Map map = new HashMap();
		map.put("username", username);
		map.put("password", np);
		return this.userMapper.login(map);
	}
}
