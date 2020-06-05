package com.ztman.model.service;

import com.ztman.model.entity.RegisterUser;
import com.ztman.model.entity.User;
import com.ztman.model.entity.UserAssist;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

@Service
public interface UserService {
	public abstract UserAssist login(String username, String password);

	List<HashMap<String, Object>> selectUserCount();

	List<HashMap<String, Object>> selectUserBySite();

	int updateDutyStatus(Long userId, String isDuty, String lon, String lat);

	String changePw(String username, String opw, String npw);

    int queryCqts(Long userId, String month);

    int queryCqbc(Long userId, String month);

    int queryCdcs(Long userId, String month);

    int queryZtcs(Long userId, String month);

	boolean sendSms(Long [] deptIds, String content);

	List<User> selectUser();

	int resetPw(String phone, String pw);

	List<HashMap<String, Object>> queryByDeptId(Long deptId, String imgDir);

	boolean smsCaptcha(String phone) throws UnsupportedEncodingException;

	void checkCpatcha(String key, String value);

	List<HashMap<String, Object>> getAdivision();

	List<HashMap<String, Object>> getBnsSystem(Long adivisionId);

	List<HashMap<String, Object>> getCompany(Long bnsSystemId);

	List<HashMap<String, Object>> getCompanyTeam(Long companyId, Long parentId);

	List<HashMap<String, Object>> getPostiton(Long adivisionId, Long bnsSystemId, Long companyId);

	boolean isUserExists(String phone);

	int register(RegisterUser user);

	int updatePwd(Long userId, String username, String pwd);

	boolean smsResetPw(String phone) throws UnsupportedEncodingException;

	void checkResetpwSMS(String key, String value);
}
