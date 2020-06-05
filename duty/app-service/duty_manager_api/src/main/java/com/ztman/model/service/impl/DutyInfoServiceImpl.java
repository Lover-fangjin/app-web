package com.ztman.model.service.impl;

import com.ztman.model.dao.DutyInfoMapper;
import com.ztman.model.entity.DutyInfo;
import com.ztman.model.service.DutyInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class DutyInfoServiceImpl implements DutyInfoService {

	@Autowired
	private DutyInfoMapper dutyInfoMapper;

	public Integer add(DutyInfo t) {
		return this.dutyInfoMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.dutyInfoMapper.deleteByPrimaryKey(id);
	}

	public DutyInfo queryById(Long id) {
		return this.dutyInfoMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll() {
		return this.dutyInfoMapper.selectAll();
	}

	public Integer update(DutyInfo t) {
		return this.dutyInfoMapper.updateByPrimaryKeySelective(t);
	}

	@Override
	public List<HashMap<String, Object>> queryDutyBySiteId(Long siteId) {
		Map map = new HashMap();
		map.put("siteId", siteId);
		return this.dutyInfoMapper.queryDutyBySiteId(map);
	}

	@Override
	public HashMap<String, Object> queryDutyByUserId(Long userId, String date) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("date", date);
		return this.dutyInfoMapper.queryDutyByUserId(map);
	}
}
