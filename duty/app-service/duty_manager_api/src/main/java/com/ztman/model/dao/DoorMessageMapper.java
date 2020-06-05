package com.ztman.model.dao;

import com.ztman.model.entity.DoorMessage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface DoorMessageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DoorMessage record);

    int insertSelective(DoorMessage record);

    DoorMessage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DoorMessage record);

    int updateByPrimaryKey(DoorMessage record);

    List<HashMap<String, Object>> tmpStatistics();

    List<HashMap<String, Object>> statisticsList(Map map);
}