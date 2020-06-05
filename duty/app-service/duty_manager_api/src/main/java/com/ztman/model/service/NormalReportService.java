package com.ztman.model.service;

import com.ztman.model.entity.NormalReport;
import com.ztman.model.entity.NormalReportAssist;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface NormalReportService {
    Integer add(NormalReport t);

    Integer delete(Long id);

    NormalReportAssist queryById(Long id);

    List<HashMap<String, Object>> queryAll(Long userId);

    Integer update(NormalReport t);

    int todayTotal(String userId);
}
