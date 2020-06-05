package com.ztman.model.dao;

import com.ztman.model.entity.BusinsessSystem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface BusinsessSystemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BusinsessSystem record);

    int insertSelective(BusinsessSystem record);

    BusinsessSystem selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BusinsessSystem record);

    int updateByPrimaryKey(BusinsessSystem record);

    List<HashMap<String, Object>> selectAll(Long userId);

    int queryUserCountByBnsId(Long bnsId);

    List<HashMap<String, Object>> queryDeptByUserId(Long userId);

    int queryUserCountByDeptId(Long deptId);

    List<HashMap<String, Object>> queryDeptByParentId(Long deptId);

    List<HashMap<String, Object>> queryZd(Map map);
}