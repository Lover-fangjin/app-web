package com.ztman.model.service.impl;

import com.ztman.model.dao.AttendanceMapper;
import com.ztman.model.entity.Attendance;
import com.ztman.model.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Service
@Transactional
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired
	private AttendanceMapper attendanceMapper;

	@Override
	public Integer add(Attendance t) {
		return this.attendanceMapper.insertSelective(t);
	}

	@Override
	public Integer delete(Long id) {
		return this.attendanceMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Attendance queryById(Long id) {
		return this.attendanceMapper.selectByPrimaryKey(id);
	}

	@Override
	public HashMap<String, Object> queryByUserId(Long userId, String date) {
		Map map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("date", date);
		return this.attendanceMapper.queryByUserId(map);
	}

	@Override
	public Integer update(Attendance t) {
		return this.attendanceMapper.updateByPrimaryKeySelective(t);
	}

	@Override
	public String dutyAbnormal(Date atTime, Long userId, String isDuty) {
		Map map = new HashMap();
		map.put("atTime", atTime);
		map.put("userId", userId);
		map.put("isDuty", isDuty);
		return this.attendanceMapper.dutyAbnormal(map);
	}
}
