package com.ztman.model.service.impl;

import com.ztman.model.dao.BusinsessSystemMapper;
import com.ztman.model.entity.BusinsessSystem;
import com.ztman.model.service.BnsSystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class BnsSystemServiceImpl implements BnsSystemService {

	@Autowired
	private BusinsessSystemMapper businsessSystemMapper;

	public Integer add(BusinsessSystem t) {
		return this.businsessSystemMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.businsessSystemMapper.deleteByPrimaryKey(id);
	}

	public BusinsessSystem queryById(Long id) {
		return this.businsessSystemMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll(Long userId) {
		return this.businsessSystemMapper.selectAll(userId);
	}

	public Integer update(BusinsessSystem t) {
		return this.businsessSystemMapper.updateByPrimaryKeySelective(t);
	}

	@Override
	public int queryUserCountByBnsId(Long bnsId) {
		return this.businsessSystemMapper.queryUserCountByBnsId(bnsId);
	}

	@Override
	public List<HashMap<String, Object>> queryDeptByUserId(Long userId) {
		return this.businsessSystemMapper.queryDeptByUserId(userId);
	}


	private int total = 0;

	@Override
	public List<HashMap<String, Object>> queryUserCountByDeptId(List<HashMap<String, Object>> deptIds) {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		for (HashMap<String, Object> map : deptIds) {

			total = 0;
			getDeptUserTotal((Long) map.get("id"));

			map.put("total", total);
			list.add(map);
		}
		return list;
	}

	private void getDeptUserTotal(Long deptId){
		this.total += this.businsessSystemMapper.queryUserCountByDeptId(deptId);

		List<HashMap<String, Object>> list = this.businsessSystemMapper.queryDeptByParentId(deptId);
		if(list!=null && list.size()>0){
			for (HashMap<String, Object> map : list) {
				getDeptUserTotal((Long) map.get("id"));
			}
		}
	}

	@Override
	public List<HashMap<String, Object>> queryZd(Long userId, Long deptId) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("parentId", deptId);
		return this.businsessSystemMapper.queryZd(map);
	}
}
