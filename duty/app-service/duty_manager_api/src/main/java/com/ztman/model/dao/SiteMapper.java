package com.ztman.model.dao;

import com.ztman.model.entity.Site;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface SiteMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Site record);

    int insertSelective(Site record);

    Site selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Site record);

    int updateByPrimaryKey(Site record);

    List<HashMap<String, Object>> selectAll(Map map);

    String dutyProportion(String deptIds);
}