package com.ztman.firectrl.model.service.impl;

import com.ztman.firectrl.model.service.UploadService;
import com.ztman.firectrl.model.dao.AttachmentMapper;
import com.ztman.firectrl.model.entity.Attachment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UploadServiceImpl implements UploadService {

	@Autowired
	private AttachmentMapper attachmentMapper;

	@Override
	public Integer add(Attachment t) {
		return this.attachmentMapper.insertSelective(t);
	}

	@Override
	public Integer delete(Long id) {
		return 0;
	}

	@Override
	public List<Attachment> queryByDataId(Long id) {
		return this.attachmentMapper.queryByDataId(id);
	}
}
