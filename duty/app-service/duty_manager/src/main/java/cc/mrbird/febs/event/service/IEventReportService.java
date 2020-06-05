package cc.mrbird.febs.event.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.EventReportExport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * 上报信息表 Service接口
 *
 * @author cjs
 * @date 2020-03-18 14:04:00
 */
public interface IEventReportService extends IService<EventReport> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param eventReport eventReport
     * @return IPage<EventReport>
     */
    IPage<EventReport> findEventReportsList(QueryRequest request, EventReport eventReport, User user);

    EventReport findById(Long id);

    /**
     * 删除业务
     *
     * @param eventreportIds 业务 id数组
     */
    void deleteEventReports(String[] eventreportIds);

    List<EventReportExport> findEventReportsListByExport(EventReport eventReport, User user);

}