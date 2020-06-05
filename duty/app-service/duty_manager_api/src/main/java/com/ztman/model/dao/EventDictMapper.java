package com.ztman.model.dao;

import com.ztman.model.entity.EventDict;

import java.util.HashMap;
import java.util.List;

public interface EventDictMapper {
    int deleteByPrimaryKey(Long id);

    int insert(EventDict record);

    int insertSelective(EventDict record);

    EventDict selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(EventDict record);

    int updateByPrimaryKey(EventDict record);

    List<HashMap<String, Object>> selectAll();

    List<HashMap<String, Object>> selectEventType(Long pid);
}