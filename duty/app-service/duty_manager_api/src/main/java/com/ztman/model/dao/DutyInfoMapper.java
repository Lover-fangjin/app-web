package com.ztman.model.dao;

import com.ztman.model.entity.DutyInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface DutyInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DutyInfo record);

    int insertSelective(DutyInfo record);

    DutyInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DutyInfo record);

    int updateByPrimaryKey(DutyInfo record);

    List<HashMap<String, Object>> selectAll();

    List<HashMap<String, Object>> queryDutyBySiteId(Map map);

    HashMap<String, Object> queryDutyByUserId(Map map);
}