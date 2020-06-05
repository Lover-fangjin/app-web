package com.ztman.model.service.impl;

import com.ztman.exception.FztException;
import com.ztman.model.dao.UserMapper;
import com.ztman.model.entity.RegisterUser;
import com.ztman.model.entity.User;
import com.ztman.model.entity.UserAssist;
import com.ztman.model.service.UserService;
import com.ztman.utils.*;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;

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

	@Override
	public List<HashMap<String, Object>> selectUserCount() {
		return this.userMapper.selectUserCount();
	}

	@Override
	public List<HashMap<String, Object>> selectUserBySite() {
		List<HashMap<String, Object>> projectList =  this.userMapper.selectUserBySite();
		for (HashMap<String, Object> project: projectList) {
			Long id = (Long) project.get("id");
			Long projectCount = (Long) project.get("count");
			Long siteCount = this.userMapper.selectUserCountBySite(id);
			Long total = projectCount + siteCount;
			project.put("count", total);
		}

		return projectList;
	}

	@Override
	public int updateDutyStatus(Long userId, String isDuty, String lon, String lat) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("isDuty", isDuty);
		map.put("lon", lon);
		map.put("lat", lat);
		return this.userMapper.updateDutyStatus(map);
	}

	@Override
	public String changePw(String username, String opw, String npw){
		String msg = "修改失败";

		String opw2 = MD5Util.encrypt(username, opw);
		Map map = new HashMap();
		map.put("username", username);
		map.put("password", opw2);
		UserAssist user = this.userMapper.login(map);
		if(user!=null){
			String npw2 = MD5Util.encrypt(username, npw);
			map = new HashMap();
			map.put("username", username);
			map.put("pw", npw2);
			int row = this.userMapper.changePw(map);
			if(row>0)
				msg = "修改成功";
		}else{
			msg = "原密码错误";
		}
		return msg;
	}

    @Override
    public int queryCqts(Long userId, String month) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("month", month);
        return this.userMapper.queryCqts(map);
    }

    @Override
    public int queryCqbc(Long userId, String month) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("month", month);
        return this.userMapper.queryCqbc(map);
    }

    @Override
    public int queryCdcs(Long userId, String month) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("month", month);
        return this.userMapper.queryCdcs(map);
    }

    @Override
    public int queryZtcs(Long userId, String month) {
        Map map = new HashMap();
        map.put("userId", userId);
        map.put("month", month);
        return this.userMapper.queryZtcs(map);
    }

	private List<String> userMobiles;

	@Override
	public boolean sendSms(Long[] deptIds, String content) {
		boolean flag = false;
		try{
			if(deptIds!=null && deptIds.length>0){
				for (int i = 0; i < deptIds.length; i++) {
					userMobiles = new ArrayList<String>();
					getDeptUserMobile(deptIds[i]);
					for (String mobile : userMobiles) {
						System.out.println(mobile);
						SMSUtil.sendSms(sms, surl, mobile, content);
					}
				}
				flag = true;
			}
		} catch(Exception e){
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}

	private void getDeptUserMobile(Long deptId){
		List<String> result = this.userMapper.queryUserMobileByDeptId(deptId);
		userMobiles.addAll(result);

		List<HashMap<String, Object>> list = this.userMapper.queryDeptByParentId(deptId);
		if(list!=null && list.size()>0){
			for (HashMap<String, Object> map : list) {
				getDeptUserMobile((Long) map.get("id"));
			}
		}
	}

	@Override
	public List<User> selectUser() {
		return this.userMapper.selectUser();
	}

	@Override
	public int resetPw(String phone, String pw) {
		User user = this.userMapper.selectUserByUsername(phone);

		Map map = new HashMap();
		map.put("pw", pw);
		map.put("userId", user.getUserId());
		return this.userMapper.resetPw(map);
	}

	@Override
	public List<HashMap<String, Object>> queryByDeptId(Long deptId, String imgDir) {
		Map map = new HashMap();
		map.put("deptId", deptId);
		map.put("imgDir", imgDir);
		return this.userMapper.queryByDeptId(map);
	}

	@Override
	public boolean smsCaptcha(String phone) throws UnsupportedEncodingException {
		String sendUrl = surl + sms +"&mobile={phone}&content={content}&sendTime=&extno=";

		sendUrl = sendUrl.replace("{phone}", phone);
		// 生成验证码
		String smsCode = String.valueOf(getRandomNum());
		String content = "【兴泰科技】注册验证码为:{code},请在2分钟内使用";
		content = content.replace("{code}", smsCode);
		sendUrl = sendUrl.replace("{content}", URLEncoder.encode(content, "UTF-8"));
		// 发送验证码 向用户
		SMSHttpRequest request = new SMSHttpRequest();
		request.DoRequest(sendUrl);

		// 接收发送结果
		if (request.getStatus() == 200) {
			redisService.set(Constant.CODE_PREFIX_CAPTCHA  + phone, StringUtils.lowerCase(smsCode), Constant.CODE_TIME);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void checkCpatcha(String key, String value) throws FztException{
		Object codeInRedis = redisService.get(Constant.CODE_PREFIX_CAPTCHA + key);
		if (StringUtils.isBlank(value)) {
			throw new FztException("请输入验证码");
		}
		if (codeInRedis == null) {
			throw new FztException("验证码已过期");
		}
		if (!StringUtils.equalsIgnoreCase(value, String.valueOf(codeInRedis))) {
			throw new FztException("验证码不正确");
		}
	}

	@Override
	public List<HashMap<String, Object>> getAdivision() {
		return this.userMapper.getAdivision();
	}

	@Override
	public List<HashMap<String, Object>> getBnsSystem(Long adivisionId) {
		return this.userMapper.getBnsSystem(adivisionId);
	}

	@Override
	public List<HashMap<String, Object>> getCompany(Long bnsSystemId) {
		return this.userMapper.getCompany(bnsSystemId);
	}

	@Override
	public List<HashMap<String, Object>> getCompanyTeam(Long companyId, Long parentId) {
		List<HashMap<String, Object>> rtnList = new ArrayList<>();
		Map map = new HashMap();
		map.put("companyId", companyId);
		map.put("parentId", parentId);
		List<HashMap<String, Object>> list = this.userMapper.getCompanyTeam(map);
		rtnList = this.getTeam(companyId, list);
		return rtnList;
	}

	@Override
	public List<HashMap<String, Object>> getPostiton(Long adivisionId, Long bnsSystemId, Long companyId){
		List<HashMap<String, Object>> rtnList = new ArrayList<>();
		Map map = new HashMap();
		map.put("adivisionId", adivisionId);
		map.put("bnsSystemId", bnsSystemId);
		map.put("companyId", companyId);
		List<HashMap<String, Object>> list = this.userMapper.getPostiton(map);
		return list;
	}

	@Override
	public boolean isUserExists(String phone) {
		User user = this.userMapper.selectUserByUsername(phone);
		if(user!=null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public int register(RegisterUser user) {
		return this.userMapper.register(user);
	}

	@Override
	public int updatePwd(Long userId, String username, String pwd) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("username", username);
		map.put("pwd", MD5Util.encrypt(username, pwd));
		return this.userMapper.updatePwd(map);
	}

	@Override
	public boolean smsResetPw(String phone) throws UnsupportedEncodingException {
		String sendUrl = surl + sms +"&mobile={phone}&content={content}&sendTime=&extno=";

		sendUrl = sendUrl.replace("{phone}", phone);
		// 生成验证码
		String smsCode = String.valueOf(getRandomNum());
		String content = "【兴泰科技】您的短信验证码是{code}。您正在通过手机号重置登录密码，如非本人操作，请忽略该短信。";
		content = content.replace("{code}", smsCode);
		sendUrl = sendUrl.replace("{content}", URLEncoder.encode(content, "UTF-8"));
		// 发送验证码 向用户
		SMSHttpRequest request = new SMSHttpRequest();
		request.DoRequest(sendUrl);

		// 接收发送结果
		if (request.getStatus() == 200) {
			redisService.set(Constant.CODE_PREFIX_RESETPW  + phone, StringUtils.lowerCase(smsCode), Constant.CODE_TIME);
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void checkResetpwSMS(String key, String value) throws FztException{
		Object codeInRedis = redisService.get(Constant.CODE_PREFIX_RESETPW + key);
		if (StringUtils.isBlank(value)) {
			throw new FztException("请输入验证码");
		}
		if (codeInRedis == null) {
			throw new FztException("验证码已过期");
		}
		if (!StringUtils.equalsIgnoreCase(value, String.valueOf(codeInRedis))) {
			throw new FztException("验证码不正确");
		}
	}

	private static int getRandomNum() {
		Random r = new Random();
		return r.nextInt(900000) + 100000;// (Math.random()*(999999-100000)+100000)
	}

	private List<HashMap<String, Object>> getTeam(Long companyId, List<HashMap<String, Object>> list){
		List<HashMap<String, Object>> rtnlist = new ArrayList<>();

		if(list.isEmpty()){
			return rtnlist;
		}

		Map map = new HashMap();
		map.put("companyId", companyId);

		for (HashMap<String, Object> dept: list) {
			HashMap<String, Object> dept2 = dept;
			map.put("parentId", dept2.get("id"));
			dept2.put("child", getTeam(companyId, this.userMapper.getCompanyTeam(map)));

			rtnlist.add(dept2);
		}
		return rtnlist;
	}
}
