package com.ztman.model.service;

import com.ztman.model.entity.HealthCode;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public interface HealthCodeService {
    Integer add(HealthCode t);

    Integer delete(Long id);

    HealthCode queryById(Long id);

    HashMap<String, Object> selectUpToDate();

    Integer update(HealthCode t);
}
