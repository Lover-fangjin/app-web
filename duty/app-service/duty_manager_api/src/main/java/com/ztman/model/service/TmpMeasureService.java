package com.ztman.model.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface TmpMeasureService {
    List<HashMap<String, Object>> tmpStatistics();

    List<HashMap<String, Object>> statisticsList(String date, String type);
}
