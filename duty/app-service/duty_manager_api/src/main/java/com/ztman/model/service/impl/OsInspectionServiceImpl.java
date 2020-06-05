package com.ztman.model.service.impl;

import com.ztman.model.dao.OsInspectionMapper;
import com.ztman.model.entity.OsInspection;
import com.ztman.model.service.OsInspectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;

@Service
@Transactional
public class OsInspectionServiceImpl implements OsInspectionService {

	@Autowired
	private OsInspectionMapper osInspectionMapper;

	public Integer add(OsInspection t) {
		return this.osInspectionMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.osInspectionMapper.deleteByPrimaryKey(id);
	}

	public OsInspection queryById(Long id) {
		return this.osInspectionMapper.selectByPrimaryKey(id);
	}

	public HashMap<String, Object> selectUpToDate() {
		return this.osInspectionMapper.selectUpToDate();
	}

	public Integer update(OsInspection t) {
		return this.osInspectionMapper.updateByPrimaryKeySelective(t);
	}
}
