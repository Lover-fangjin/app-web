package com.ztman.model.dao;

import com.ztman.model.entity.HealthCode;

import java.util.HashMap;

public interface HealthCodeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(HealthCode record);

    int insertSelective(HealthCode record);

    HealthCode selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HealthCode record);

    int updateByPrimaryKey(HealthCode record);

    HashMap<String, Object> selectUpToDate();
}