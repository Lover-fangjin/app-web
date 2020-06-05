package com.ztman.model.service;

import com.ztman.model.entity.OsInspection;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public interface OsInspectionService {
    Integer add(OsInspection t);

    Integer delete(Long id);

    OsInspection queryById(Long id);

    HashMap<String, Object> selectUpToDate();

    Integer update(OsInspection t);
}
