package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.DutyInfo;
import cc.mrbird.febs.system.service.IDutyInfoService;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 *  Controller
 *
 * @author cjs
 * @date 2020-03-26 13:33:46
 */
@Slf4j
@Validated
@Controller
public class DutyInfoController extends BaseController {

    @Autowired
    private IDutyInfoService dutyInfoService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "dutyInfo")
    public String dutyInfoIndex(){
        return FebsUtil.view("dutyInfo/dutyInfo");
    }

    @GetMapping("dutyInfo")
    @ResponseBody
    @RequiresPermissions("dutyInfo:list")
    public FebsResponse getAllDutyInfos(DutyInfo dutyInfo) {
        return new FebsResponse().success().data(dutyInfoService.findDutyInfos(dutyInfo));
    }

    @GetMapping("dutyInfo/list")
    @ResponseBody
    @RequiresPermissions("dutyInfo:list")
    public FebsResponse dutyInfoList(QueryRequest request, DutyInfo dutyInfo) {
        Map<String, Object> dataTable = getDataTable(this.dutyInfoService.findDutyInfos(request, dutyInfo));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增DutyInfo", exceptionMessage = "新增DutyInfo失败")
    @PostMapping("dutyInfo")
    @ResponseBody
    @RequiresPermissions("dutyInfo:add")
    public FebsResponse addDutyInfo(@Valid DutyInfo dutyInfo) {
        this.dutyInfoService.createDutyInfo(dutyInfo);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除DutyInfo", exceptionMessage = "删除DutyInfo失败")
    @GetMapping("dutyInfo/delete")
    @ResponseBody
    @RequiresPermissions("dutyInfo:delete")
    public FebsResponse deleteDutyInfo(DutyInfo dutyInfo) {
        this.dutyInfoService.deleteDutyInfo(dutyInfo);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改DutyInfo", exceptionMessage = "修改DutyInfo失败")
    @PostMapping("dutyInfo/update")
    @ResponseBody
    @RequiresPermissions("dutyInfo:update")
    public FebsResponse updateDutyInfo(DutyInfo dutyInfo) {
        this.dutyInfoService.updateDutyInfo(dutyInfo);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改DutyInfo", exceptionMessage = "导出Excel失败")
    @PostMapping("dutyInfo/excel")
    @ResponseBody
    @RequiresPermissions("dutyInfo:export")
    public void export(QueryRequest queryRequest, DutyInfo dutyInfo, HttpServletResponse response) {
        List<DutyInfo> dutyInfos = this.dutyInfoService.findDutyInfos(queryRequest, dutyInfo).getRecords();
        ExcelKit.$Export(DutyInfo.class, response).downXlsx(dutyInfos, false);
    }
}
