package com.ztman.model.dao;

import com.ztman.model.entity.Attendance;

import java.util.HashMap;
import java.util.Map;

public interface AttendanceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Attendance record);

    int insertSelective(Attendance record);

    Attendance selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Attendance record);

    int updateByPrimaryKey(Attendance record);

    HashMap<String, Object> queryByUserId(Map map);

    String dutyAbnormal(Map map);
}