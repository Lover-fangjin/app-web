package com.ztman.model.service;

import com.ztman.model.entity.Project;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface ProjectService {
    Integer add(Project t);

    Integer delete(Long id);

    Project queryById(Long id);

    List<HashMap<String, Object>> queryAll();

    Integer update(Project t);
}
