package com.ztman.model.service;

import com.ztman.model.entity.Attachment;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UploadService {
    Integer add(Attachment t);

    Integer delete(Long id);

    List<Attachment> queryByDataId(Long id);
}
