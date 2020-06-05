package com.ztman.firectrl.model.dao;

import com.ztman.firectrl.model.entity.Company;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface CompanyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);

    List<HashMap<String, Object>> getCountList(Map map);

    List<HashMap<String, Object>> getCompanyList(Map map);

    HashMap<String, Object> getCompanyDetail(Long id);

    List<HashMap<String, Object>> getAssociKey(@Param("ckey") String ckey);

    List<HashMap<String, Object>> queryCompanyList(Map map);

    List<HashMap<String, Object>> getCreditRatingChart(Map map);

    List<HashMap<String, Object>> getBusinessTypeChartGj(Map map);

    List<HashMap<String, Object>> getBusinessTypeChartXq(Map map);

    List<HashMap<String, Object>> queryCompanyListByBnsType(Map map);
}