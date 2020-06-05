package com.ztman.model.service.impl;

import com.ztman.model.dao.NormalReportMapper;
import com.ztman.model.entity.NormalReport;
import com.ztman.model.entity.NormalReportAssist;
import com.ztman.model.service.NormalReportService;
import com.ztman.utils.SequenceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class NormalReportServiceImpl implements NormalReportService {

	@Autowired
	private NormalReportMapper normalReportMapper;

	public Integer add(NormalReport t) {
		t.setHappenDate(new Date());
		t.setReportNo(SequenceUtil.getLocalTrmSeqNum(this.normalReportMapper.todayTotal()));
		int rows = this.normalReportMapper.insertSelective(t);
		return rows;
	}

	public Integer delete(Long id) {
		return this.normalReportMapper.deleteByPrimaryKey(id);
	}

	public NormalReportAssist queryById(Long id) {
		return this.normalReportMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll(Long userId) {
		Map map = new HashMap();
		map.put("userId", userId);
		return this.normalReportMapper.selectAll(map);
	}

	public Integer update(NormalReport t) {
		return this.normalReportMapper.updateByPrimaryKeySelective(t);
	}

	public int todayTotal(String userId){
		return this.normalReportMapper.todayTotalByUser(userId);
	}
}
