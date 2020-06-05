package com.ztman.model.service.impl;

import com.ztman.model.dao.ProjectInfoMapper;
import com.ztman.model.dao.ProjectMapper;
import com.ztman.model.entity.Project;
import com.ztman.model.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper projectMapper;

	@Autowired
	private ProjectInfoMapper projectInfoMapper;

	public Integer add(Project t) {
		return this.projectMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.projectMapper.deleteByPrimaryKey(id);
	}

	public Project queryById(Long id) {
		return this.projectMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll() {
		return this.projectInfoMapper.selectAll();
	}

	public Integer update(Project t) {
		return this.projectMapper.updateByPrimaryKeySelective(t);
	}
}
