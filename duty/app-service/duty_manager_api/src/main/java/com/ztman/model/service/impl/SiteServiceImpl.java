package com.ztman.model.service.impl;

import com.ztman.model.dao.SiteMapper;
import com.ztman.model.entity.Site;
import com.ztman.model.service.SiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class SiteServiceImpl implements SiteService {

	@Autowired
	private SiteMapper siteMapper;

	public Integer add(Site t) {
		return this.siteMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.siteMapper.deleteByPrimaryKey(id);
	}

	public Site queryById(Long id) {
		return this.siteMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll(Long projectId) {
		Map map = new HashMap<String, Object>();
		map.put("projectId", projectId);
		return this.siteMapper.selectAll(map);
	}

	public Integer update(Site t) {
		return this.siteMapper.updateByPrimaryKeySelective(t);
	}

	@Override
	public String dutyProportion(String deptIds) {
		return this.siteMapper.dutyProportion(deptIds);
	}
}
