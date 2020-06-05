package com.ztman.firectrl.model.dao;

import com.ztman.firectrl.model.entity.User;
import com.ztman.firectrl.model.entity.UserAssist;

import java.util.Map;

public interface UserMapper {
    int deleteByPrimaryKey(Long userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    UserAssist login(Map map);
}