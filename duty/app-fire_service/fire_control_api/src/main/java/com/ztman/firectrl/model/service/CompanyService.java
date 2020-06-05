package com.ztman.firectrl.model.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface CompanyService {
	List<HashMap<String,Object>> getCountList(String type, String ckey);

	List<HashMap<String,Object>> getCompanyList(String type, String ckey);

	HashMap<String, Object> getCompanyDetail(Long id);

	List<HashMap<String,Object>> getAssociKey(String ckey);

	List<HashMap<String,Object>> queryCompanyList(String key, String value);

	List<HashMap<String, Object>> getCreditRatingChart(String type, String ckey);

	List<HashMap<String, Object>> getBusinessTypeChartGj(String type, String ckey);

	List<HashMap<String, Object>> getBusinessTypeChartXq(String type, String ckey);

	List<HashMap<String, Object>> queryCompanyListByBnsType(String type, String ckey, String bnsClass, String bnsType);
}
