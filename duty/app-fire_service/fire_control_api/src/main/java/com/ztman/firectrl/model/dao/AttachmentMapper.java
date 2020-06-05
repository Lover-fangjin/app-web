package com.ztman.firectrl.model.dao;

import com.ztman.firectrl.model.entity.Attachment;

import java.util.List;

public interface AttachmentMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Attachment record);

    int insertSelective(Attachment record);

    Attachment selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Attachment record);

    int updateByPrimaryKey(Attachment record);

    List<Attachment> queryByDataId(Long dataId);
}