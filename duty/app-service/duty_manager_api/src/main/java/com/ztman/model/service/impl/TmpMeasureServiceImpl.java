package com.ztman.model.service.impl;

import com.ztman.model.dao.DoorMessageMapper;
import com.ztman.model.service.TmpMeasureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class TmpMeasureServiceImpl implements TmpMeasureService {

	@Autowired
	private DoorMessageMapper doorMessageMapper;

	@Override
	public List<HashMap<String, Object>> tmpStatistics() {
		return this.doorMessageMapper.tmpStatistics();
	}

	@Override
	public List<HashMap<String, Object>> statisticsList(String date, String type) {
		Map map = new HashMap();
		map.put("date", date);
		map.put("type", type);
		return this.doorMessageMapper.statisticsList(map);
	}
}
