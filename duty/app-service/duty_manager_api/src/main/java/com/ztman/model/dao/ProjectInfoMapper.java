package com.ztman.model.dao;

import com.ztman.model.entity.ProjectInfo;

import java.util.HashMap;
import java.util.List;

public interface ProjectInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProjectInfo record);

    int insertSelective(ProjectInfo record);

    ProjectInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProjectInfo record);

    int updateByPrimaryKey(ProjectInfo record);

    List<HashMap<String, Object>> selectAll();
}