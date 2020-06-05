package com.ztman.model.dao;

import com.ztman.model.entity.OsInspection;

import java.util.HashMap;

public interface OsInspectionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OsInspection record);

    int insertSelective(OsInspection record);

    OsInspection selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OsInspection record);

    int updateByPrimaryKey(OsInspection record);

    HashMap<String, Object> selectUpToDate();
}