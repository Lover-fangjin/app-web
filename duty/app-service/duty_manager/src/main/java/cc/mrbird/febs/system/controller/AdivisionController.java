package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Adivision;
import cc.mrbird.febs.system.service.IAdivisionService;
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
 * 行政区域管理 Controller
 *
 * @author cjs
 * @date 2020-03-31 13:51:20
 */
@Slf4j
@Validated
@Controller
public class AdivisionController extends BaseController {

    @Autowired
    private IAdivisionService adivisionService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "adivision")
    public String adivisionIndex(){
        return FebsUtil.view("adivision/adivision");
    }

    @GetMapping("adivision")
    @ResponseBody
    @RequiresPermissions("adivision:list")
    public FebsResponse getAllAdivisions(Adivision adivision) {
        return new FebsResponse().success().data(adivisionService.findAdivisions(adivision));
    }

    @GetMapping("adivision/list")
    @ResponseBody
    @RequiresPermissions("adivision:list")
    public FebsResponse adivisionList(QueryRequest request, Adivision adivision) {
        Map<String, Object> dataTable = getDataTable(this.adivisionService.findAdivisions(request, adivision));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增Adivision", exceptionMessage = "新增Adivision失败")
    @PostMapping("adivision")
    @ResponseBody
    @RequiresPermissions("adivision:add")
    public FebsResponse addAdivision(@Valid Adivision adivision) {
        this.adivisionService.createAdivision(adivision);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Adivision", exceptionMessage = "删除Adivision失败")
    @GetMapping("adivision/delete")
    @ResponseBody
    @RequiresPermissions("adivision:delete")
    public FebsResponse deleteAdivision(Adivision adivision) {
        this.adivisionService.deleteAdivision(adivision);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Adivision", exceptionMessage = "修改Adivision失败")
    @PostMapping("adivision/update")
    @ResponseBody
    @RequiresPermissions("adivision:update")
    public FebsResponse updateAdivision(Adivision adivision) {
        this.adivisionService.updateAdivision(adivision);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Adivision", exceptionMessage = "导出Excel失败")
    @PostMapping("adivision/excel")
    @ResponseBody
    @RequiresPermissions("adivision:export")
    public void export(QueryRequest queryRequest, Adivision adivision, HttpServletResponse response) {
        List<Adivision> adivisions = this.adivisionService.findAdivisions(queryRequest, adivision).getRecords();
        ExcelKit.$Export(Adivision.class, response).downXlsx(adivisions, false);
    }
}
