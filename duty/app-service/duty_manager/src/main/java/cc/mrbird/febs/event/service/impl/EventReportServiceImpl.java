package cc.mrbird.febs.event.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.EventReportExport;
import cc.mrbird.febs.event.mapper.EventReportMapper;
import cc.mrbird.febs.event.service.IEventReportService;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

/**
 * 上报信息表 Service实现
 *
 * @author cjs
 * @date 2020-03-18 14:04:00
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class EventReportServiceImpl extends ServiceImpl<EventReportMapper, EventReport> implements IEventReportService {

    @Autowired
    private EventReportMapper eventReportMapper;

    @Override
    public IPage<EventReport> findEventReportsList(QueryRequest request, EventReport eventReport, User user) {
        LambdaQueryWrapper<EventReport> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<EventReport> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findEventReportsList(page, eventReport, user);
    }


    @Override
    public EventReport findById(Long id) {
        EventReport eventReport = this.baseMapper.findById(id);
        List<String> imgs = this.eventReportMapper.findImgsById(id);
        eventReport.setImgs(imgs);
        return eventReport;
    }


    @Override
    @Transactional
    public void deleteEventReports(String[] eventreportIds) {

        List<String> list = Arrays.asList(eventreportIds);
        // 删除业务
        this.removeByIds(list);
    }

    @Override
    public List<EventReportExport> findEventReportsListByExport(EventReport eventReport, User user) {
        return this.eventReportMapper.findEventReportsListByExport(eventReport, user);
    }


}