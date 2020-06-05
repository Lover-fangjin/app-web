package cc.mrbird.febs.event.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.NormalReport;
import cc.mrbird.febs.event.service.INormalReportService;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;
/**
 *  Controller
 *
 * @author cjs
 * @date 2020-03-19 09:56:45
 */
@Slf4j
@Validated
@RestController
@RequestMapping("normalreport")
public class NormalReportController extends BaseController {

    @Autowired
    private INormalReportService normalReportService;



    @GetMapping("list")
    @RequiresPermissions("normalreport:view")
    public FebsResponse normalReportList(QueryRequest request, NormalReport normalReport) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String, Object> dataTable = getDataTable(this.normalReportService.findNormalReportsList(request, normalReport, user));
        return new FebsResponse().success().data(dataTable);
    }



    @ControllerEndpoint(operation = "删除日常任务", exceptionMessage = "删除日常任务失败")
    @GetMapping("delete/{normalreportIds}")
    @RequiresPermissions("normalreport:delete")
    public FebsResponse deleteNormalReport(@NotBlank(message = "{required}") @PathVariable String normalreportIds) {
        String[] ids = normalreportIds.split(StringPool.COMMA);
        this.normalReportService.deleteNormalReport(ids);
        return new FebsResponse().success();
    }






    @ControllerEndpoint(operation = "导出NormalReport", exceptionMessage = "导出Excel失败")
    @PostMapping("excel")
    @RequiresPermissions("normalreport:export")
    public void export(QueryRequest queryRequest, NormalReport normalReport, HttpServletResponse response) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        List<NormalReport> normalReports = this.normalReportService.findNormalReportsList(queryRequest, normalReport, user).getRecords();
        ExcelKit.$Export(NormalReport.class, response).downXlsx(normalReports, false);
    }
}
