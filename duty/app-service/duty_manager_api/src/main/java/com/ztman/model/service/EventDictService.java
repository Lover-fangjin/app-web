package com.ztman.model.service;

import com.ztman.model.entity.EventDict;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface EventDictService {
    Integer add(EventDict t);

    Integer delete(Long id);

    EventDict queryById(Long id);

    List<HashMap<String, Object>> queryAll();

    Integer update(EventDict t);

    List<HashMap<String, Object>> selectEventType(Long pid);
}
