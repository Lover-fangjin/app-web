package com.ztman.model.service.impl;

import com.ztman.model.dao.HealthCodeMapper;
import com.ztman.model.entity.HealthCode;
import com.ztman.model.service.HealthCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;

@Service
@Transactional
public class HealthCodeServiceImpl implements HealthCodeService {

	@Autowired
	private HealthCodeMapper healthCodeMapper;

	public Integer add(HealthCode t) {
		return this.healthCodeMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.healthCodeMapper.deleteByPrimaryKey(id);
	}

	public HealthCode queryById(Long id) {
		return this.healthCodeMapper.selectByPrimaryKey(id);
	}

	public HashMap<String, Object> selectUpToDate() {
		return this.healthCodeMapper.selectUpToDate();
	}

	public Integer update(HealthCode t) {
		return this.healthCodeMapper.updateByPrimaryKeySelective(t);
	}
}
