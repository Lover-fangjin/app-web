package com.ztman.model.dao;

import com.ztman.model.entity.EventReport;
import com.ztman.model.entity.EventReportAssist;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface EventReportMapper {
    int deleteByPrimaryKey(Long id);

    int insert(EventReport record);

    int insertSelective(EventReport record);

    EventReportAssist selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(EventReport record);

    int updateByPrimaryKey(EventReport record);

    List<HashMap<String, Object>> selectAll(Map map);

    int updateImagerId(Map map);

    int delEventImage(Map map);

    int todayTotalByUser(String userId);

    int todayTotal();

    int undoEvent(Long id);
}