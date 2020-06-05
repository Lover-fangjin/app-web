package cc.mrbird.febs.event.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.EventDict;
import cc.mrbird.febs.event.mapper.EventDictMapper;
import cc.mrbird.febs.event.service.IEventDictService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 事件类型表 Service实现
 *
 * @author cjs
 * @date 2020-03-09 10:33:57
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class EventDictServiceImpl extends ServiceImpl<EventDictMapper, EventDict> implements IEventDictService {

    @Autowired
    private EventDictMapper eventDictMapper;

    @Override
    public IPage<EventDict> findEventDicts(QueryRequest request, EventDict eventDict) {
        LambdaQueryWrapper<EventDict> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<EventDict> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<EventDict> findEventDicts(EventDict eventDict) {
	    LambdaQueryWrapper<EventDict> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createEventDict(EventDict eventDict) {
        this.save(eventDict);
    }

    @Override
    @Transactional
    public void updateEventDict(EventDict eventDict) {
        this.saveOrUpdate(eventDict);
    }

    @Override
    @Transactional
    public void deleteEventDict(EventDict eventDict) {
        LambdaQueryWrapper<EventDict> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public List<EventDict> geteventDictList(String pid) {
        return  this.baseMapper.geteventDictList(pid);
    }
}
