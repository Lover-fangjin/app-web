package com.ztman.model.dao;

import com.ztman.model.entity.RegisterUser;
import com.ztman.model.entity.User;
import com.ztman.model.entity.UserAssist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    UserAssist login(Map map);

    List<HashMap<String, Object>> selectUserCount();

    List<HashMap<String, Object>> selectUserBySite();

    Long selectUserCountBySite(Long id);

    int updateDutyStatus(Map map);

    int changePw(Map map);

    int queryCqts(Map map);

    int queryCqbc(Map map);

    int queryCdcs(Map map);

    int queryZtcs(Map map);

    List<String> selectUserMobileByDeptId(Long deptId);

    List<String> queryUserMobileByDeptId(Long deptId);

    List<HashMap<String, Object>> queryDeptByParentId(Long deptId);

    List<User> selectUser();

    int resetPw(Map map);

    List<HashMap<String, Object>> queryByDeptId(Map map);

    User selectUserByUsername(String username);

    List<HashMap<String, Object>> getAdivision();

    List<HashMap<String, Object>> getBnsSystem(Long adivisionId);

    List<HashMap<String, Object>> getCompany(Long bnsSystemId);

    List<HashMap<String, Object>> getCompanyTeam(Map map);

    List<HashMap<String, Object>> getPostiton(Map map);

    int register(RegisterUser user);

    int updatePwd(Map map);
}