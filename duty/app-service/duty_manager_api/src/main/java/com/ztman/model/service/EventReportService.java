package com.ztman.model.service;

import com.ztman.model.entity.EventReport;
import com.ztman.model.entity.EventReportAssist;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface EventReportService {
    Integer addOrUpdate(EventReport t, Long[] imagerIds);

    Integer delete(Long id);

    EventReportAssist queryById(Long id);

    List<HashMap<String, Object>> queryAll(Long userId);

    Integer update(EventReport t);

    int todayTotal(String userId);

    int undoEvent(Long id);
}
