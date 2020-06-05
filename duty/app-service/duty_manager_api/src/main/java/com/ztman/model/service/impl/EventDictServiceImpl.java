package com.ztman.model.service.impl;

import com.ztman.model.dao.EventDictMapper;
import com.ztman.model.entity.EventDict;
import com.ztman.model.service.EventDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

@Service
@Transactional
public class EventDictServiceImpl implements EventDictService {

	@Autowired
	private EventDictMapper eventDictMapper;

	public Integer add(EventDict t) {
		return this.eventDictMapper.insertSelective(t);
	}

	public Integer delete(Long id) {
		return this.eventDictMapper.deleteByPrimaryKey(id);
	}

	public EventDict queryById(Long id) {
		return this.eventDictMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll() {
		return this.eventDictMapper.selectAll();
	}

	public Integer update(EventDict t) {
		return this.eventDictMapper.updateByPrimaryKeySelective(t);
	}

	@Override
	public List<HashMap<String, Object>> selectEventType(Long pid) {
		return this.eventDictMapper.selectEventType(pid);
	}
}
