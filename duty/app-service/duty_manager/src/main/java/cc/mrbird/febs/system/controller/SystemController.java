package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.System;
import cc.mrbird.febs.system.service.ISystemService;
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
 * 系统表 Controller
 *
 * @author cjs
 * @date 2020-03-31 13:51:15
 */
@Slf4j
@Validated
@Controller
public class SystemController extends BaseController {

    @Autowired
    private ISystemService systemService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "system")
    public String systemIndex(){
        return FebsUtil.view("system/system");
    }

    @GetMapping("system")
    @ResponseBody
    @RequiresPermissions("system:list")
    public FebsResponse getAllSystems(System system) {
        return new FebsResponse().success().data(systemService.findSystems(system));
    }

    @GetMapping("system/list")
    @ResponseBody
    @RequiresPermissions("system:list")
    public FebsResponse systemList(QueryRequest request, System system) {
        Map<String, Object> dataTable = getDataTable(this.systemService.findSystems(request, system));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增System", exceptionMessage = "新增System失败")
    @PostMapping("system")
    @ResponseBody
    @RequiresPermissions("system:add")
    public FebsResponse addSystem(@Valid System system) {
        this.systemService.createSystem(system);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除System", exceptionMessage = "删除System失败")
    @GetMapping("system/delete")
    @ResponseBody
    @RequiresPermissions("system:delete")
    public FebsResponse deleteSystem(System system) {
        this.systemService.deleteSystem(system);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改System", exceptionMessage = "修改System失败")
    @PostMapping("system/update")
    @ResponseBody
    @RequiresPermissions("system:update")
    public FebsResponse updateSystem(System system) {
        this.systemService.updateSystem(system);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改System", exceptionMessage = "导出Excel失败")
    @PostMapping("system/excel")
    @ResponseBody
    @RequiresPermissions("system:export")
    public void export(QueryRequest queryRequest, System system, HttpServletResponse response) {
        List<System> systems = this.systemService.findSystems(queryRequest, system).getRecords();
        ExcelKit.$Export(System.class, response).downXlsx(systems, false);
    }
}
