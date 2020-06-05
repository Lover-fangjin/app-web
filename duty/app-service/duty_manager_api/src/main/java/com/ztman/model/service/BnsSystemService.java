package com.ztman.model.service;

import com.ztman.model.entity.BusinsessSystem;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface BnsSystemService {
    Integer add(BusinsessSystem t);

    Integer delete(Long id);

    BusinsessSystem queryById(Long id);

    List<HashMap<String, Object>> queryAll(Long userId);

    Integer update(BusinsessSystem t);

    int queryUserCountByBnsId(Long bnsId);

    List<HashMap<String, Object>> queryDeptByUserId(Long userId);

    List<HashMap<String, Object>> queryUserCountByDeptId(List<HashMap<String, Object>> deptIds);

    List<HashMap<String, Object>> queryZd(Long userId, Long deptId);
}
