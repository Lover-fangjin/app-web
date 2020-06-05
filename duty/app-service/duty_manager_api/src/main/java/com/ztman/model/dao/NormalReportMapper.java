package com.ztman.model.dao;

import com.ztman.model.entity.NormalReport;
import com.ztman.model.entity.NormalReportAssist;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface NormalReportMapper {
    int deleteByPrimaryKey(Long id);

    int insert(NormalReport record);

    int insertSelective(NormalReport record);

    NormalReportAssist selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(NormalReport record);

    int updateByPrimaryKey(NormalReport record);

    List<HashMap<String, Object>> selectAll(Map map);

    int todayTotalByUser(String userId);

    int todayTotal();
}