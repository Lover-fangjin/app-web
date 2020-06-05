package com.ztman.model.service;

import com.ztman.model.entity.Site;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface SiteService {
    Integer add(Site t);

    Integer delete(Long id);

    Site queryById(Long id);

    List<HashMap<String, Object>> queryAll(Long projectId);

    Integer update(Site t);

    String dutyProportion(String deptIds);
}
