package com.ztman.model.service;

import com.ztman.model.entity.Attendance;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;

@Service
public interface AttendanceService {
    Integer add(Attendance t);

    Integer delete(Long id);

    Attendance queryById(Long id);

    HashMap<String, Object> queryByUserId(Long userId, String date);

    Integer update(Attendance t);

    String dutyAbnormal(Date atTime, Long userId, String isDuty);
}
