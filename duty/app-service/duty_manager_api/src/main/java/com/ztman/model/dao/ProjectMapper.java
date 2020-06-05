package com.ztman.model.dao;

import com.ztman.model.entity.Project;

import java.util.HashMap;
import java.util.List;

public interface ProjectMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Project record);

    int insertSelective(Project record);

    Project selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Project record);

    int updateByPrimaryKey(Project record);

    List<HashMap<String, Object>> selectAll();
}