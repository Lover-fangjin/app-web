package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.ProjectInfo;
import cc.mrbird.febs.system.service.IProjectInfoService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;
import java.util.Map;

/**
 *  Controller
 *
 * @author cjs
 * @date 2020-03-20 11:13:17
 */
@Slf4j
@Validated
@RestController
@RequestMapping("projectinfo")
public class ProjectInfoController extends BaseController {

    @Autowired
    private IProjectInfoService projectInfoService;




    @ControllerEndpoint(operation = "获取队伍下的人", exceptionMessage = "获取队伍下的人失败")
    @GetMapping("userlist/{deptid}")
    public FebsResponse getUsersByDeptid(@NotBlank(message = "{required}") @PathVariable String deptid) {
        return new FebsResponse().success().data(this.projectInfoService.getUsersByDeptid(deptid));
    }


    @GetMapping("list")
    @RequiresPermissions("projectinfo:view")
    public FebsResponse projectInfoList(QueryRequest request, ProjectInfo projectInfo) {
        Map<String, Object> dataTable = getDataTable(this.projectInfoService.findProjectInfosList(request, projectInfo));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增ProjectInfo", exceptionMessage = "新增ProjectInfo失败")
    @PostMapping("add")
    @RequiresPermissions("projectinfo:add")
    public FebsResponse addProjectInfo(@Valid ProjectInfo projectInfo) {
        this.projectInfoService.createProjectInfo(projectInfo);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除ProjectInfo", exceptionMessage = "删除ProjectInfo失败")
    @GetMapping("delete/{projectinfoIds}")
    @RequiresPermissions("projectinfo:delete")
    public FebsResponse deleteProjectInfos(@NotBlank(message = "{required}") @PathVariable String projectinfoIds) {
        String[] ids = projectinfoIds.split(StringPool.COMMA);
        this.projectInfoService.deleteProjectInfos(ids);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改ProjectInfo", exceptionMessage = "修改ProjectInfo失败")
    @PostMapping("update")
    @RequiresPermissions("projectinfo:update")
    public FebsResponse updateProjectInfo(ProjectInfo projectInfo) {
        this.projectInfoService.updateProjectInfo(projectInfo);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出ProjectInfo", exceptionMessage = "导出Excel失败")
    @PostMapping("excel")
    @ResponseBody
    @RequiresPermissions("projectinfo:export")
    public void export(QueryRequest queryRequest, ProjectInfo projectInfo, HttpServletResponse response) {
        List<ProjectInfo> projectInfos = this.projectInfoService.findProjectInfosList(queryRequest, projectInfo).getRecords();
        ExcelKit.$Export(ProjectInfo.class, response).downXlsx(projectInfos, false);
    }
}
