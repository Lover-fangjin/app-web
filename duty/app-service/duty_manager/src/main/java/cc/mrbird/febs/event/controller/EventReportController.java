package cc.mrbird.febs.event.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.EventReportExport;
import cc.mrbird.febs.event.service.IEventReportService;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;
/**
 * 上报信息表 Controller
 *
 * @author cjs
 * @date 2020-03-18 14:04:00
 */
@Slf4j
@Validated
@RestController
@RequestMapping("eventreport")
public class EventReportController extends BaseController {

    @Autowired
    private IEventReportService eventReportService;





    @GetMapping("list")
    @RequiresPermissions("eventreport:view")
    public FebsResponse eventReportList(QueryRequest request, EventReport eventReport) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String, Object> dataTable = getDataTable(this.eventReportService.findEventReportsList(request, eventReport, user));
        return new FebsResponse().success().data(dataTable);
    }


    @ControllerEndpoint(operation = "导出EventReport", exceptionMessage = "导出Excel失败")
    @GetMapping("excel")
    @RequiresPermissions("eventreport:export")
    public void export(QueryRequest queryRequest, EventReport eventReport, HttpServletResponse response) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        List<EventReportExport> eventReports = this.eventReportService.findEventReportsListByExport(eventReport, user);
        ExcelKit.$Export(EventReportExport.class, response).downXlsx(eventReports, false);
    }


    @GetMapping("delete/{eventreportIds}")
    @RequiresPermissions("eventreport:delete")
    @ControllerEndpoint(operation = "删除应急业务", exceptionMessage = "删除应急业务")
    public FebsResponse deleteEventReports(@NotBlank(message = "{required}") @PathVariable String eventreportIds)  {
        String[] ids = eventreportIds.split(StringPool.COMMA);
        this.eventReportService.deleteEventReports(ids);
        return new FebsResponse().success();

    }





}
