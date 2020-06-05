package com.ztman.model.service.impl;

import com.ztman.model.dao.EventReportMapper;
import com.ztman.model.entity.EventReport;
import com.ztman.model.entity.EventReportAssist;
import com.ztman.model.service.EventReportService;
import com.ztman.utils.SequenceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class EventReportServiceImpl implements EventReportService {

	@Autowired
	private EventReportMapper eventReportMapper;

	public Integer addOrUpdate(EventReport t, Long[] imagerIds) {
		int rows = 0;
		if(t.getId()!=null && t.getId()!=0){
			Map map = new HashMap();
			map.put("dataId", t.getId());
			this.eventReportMapper.delEventImage(map);
			t.setHappenDate(new Date());
			t.setExt4("1");

			rows = this.eventReportMapper.updateByPrimaryKeySelective(t);
		}else{
			t.setHappenDate(new Date());
			t.setReportNo(SequenceUtil.getLocalTrmSeqNum(this.eventReportMapper.todayTotal()));
			t.setExt4("1");
			rows = this.eventReportMapper.insertSelective(t);

			if(imagerIds!=null && imagerIds.length>0){
				Map map = new HashMap();
				map.put("dataId", t.getId());
				for (int i = 0; i < imagerIds.length; i++) {
					map.put("imageId", imagerIds[i]);
					this.eventReportMapper.updateImagerId(map);
				}
			}
		}

		return rows;
	}

	public Integer delete(Long id) {
		return this.eventReportMapper.deleteByPrimaryKey(id);
	}

	public EventReportAssist queryById(Long id) {
		return this.eventReportMapper.selectByPrimaryKey(id);
	}

	public List<HashMap<String, Object>> queryAll(Long userId) {
		Map map = new HashMap();
		map.put("userId", userId);
		return this.eventReportMapper.selectAll(map);
	}

	public Integer update(EventReport t) {
		return this.eventReportMapper.updateByPrimaryKeySelective(t);
	}

	public int todayTotal(String userId){
		return this.eventReportMapper.todayTotalByUser(userId);
	}

	@Override
	public int undoEvent(Long id) {
		return this.eventReportMapper.undoEvent(id);
	}
}
