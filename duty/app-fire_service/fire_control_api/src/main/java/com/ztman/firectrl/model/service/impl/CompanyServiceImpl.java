package com.ztman.firectrl.model.service.impl;

import com.ztman.firectrl.model.dao.CompanyMapper;
import com.ztman.firectrl.model.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;

	@Override
	public List<HashMap<String, Object>> getCountList(String type, String ckey) {
		if("".equals(type) || type==null)
			type = "0";
		if("其他".equals(ckey))
			ckey = "";

		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		return this.companyMapper.getCountList(map);
	}

	@Override
	public List<HashMap<String, Object>> getCompanyList(String type, String ckey) {
		if("其他".equals(ckey))
			ckey = "";
		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		return this.companyMapper.getCompanyList(map);
	}

	@Override
	public HashMap<String, Object> getCompanyDetail(Long id) {
		HashMap<String, Object> company = this.companyMapper.getCompanyDetail(id);
		return company;
	}

	@Override
	public List<HashMap<String, Object>> getAssociKey(String ckey) {
		return this.companyMapper.getAssociKey(ckey);
	}

	@Override
	public List<HashMap<String, Object>> queryCompanyList(String key, String value) {
		Map map = new HashMap();
		map.put("key", key);
		map.put("value", value);
		return this.companyMapper.queryCompanyList(map);
	}

	@Override
	public List<HashMap<String, Object>> getCreditRatingChart(String type, String ckey) {
		if("其他".equals(ckey))
			ckey = "";
		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		return this.companyMapper.getCreditRatingChart(map);
	}

	@Override
	public List<HashMap<String, Object>> getBusinessTypeChartGj(String type, String ckey) {
		if("其他".equals(ckey))
			ckey = "";
		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		return this.companyMapper.getBusinessTypeChartGj(map);
	}

	@Override
	public List<HashMap<String, Object>> getBusinessTypeChartXq(String type, String ckey) {
		if("其他".equals(ckey))
			ckey = "";
		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		return this.companyMapper.getBusinessTypeChartXq(map);
	}

	@Override
	public List<HashMap<String, Object>> queryCompanyListByBnsType(String type, String ckey, String bnsClass, String bnsType) {
		if("其他".equals(ckey))
			ckey = "";
		if("其他".equals(bnsType))
			bnsType = "";
		Map map = new HashMap();
		map.put("type", type);
		map.put("ckey", ckey);
		map.put("bnsClass", bnsClass);
		map.put("bnsType", bnsType);
		return this.companyMapper.queryCompanyListByBnsType(map);
	}
}
