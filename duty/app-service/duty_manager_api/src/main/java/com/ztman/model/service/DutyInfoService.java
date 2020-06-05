package com.ztman.model.service;

import com.ztman.model.entity.DutyInfo;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface DutyInfoService {
    Integer add(DutyInfo t);

    Integer delete(Long id);

    DutyInfo queryById(Long id);

    List<HashMap<String, Object>> queryAll();

    Integer update(DutyInfo t);

    List<HashMap<String, Object>> queryDutyBySiteId(Long siteId);

    HashMap<String, Object> queryDutyByUserId(Long userId, String date);
}
