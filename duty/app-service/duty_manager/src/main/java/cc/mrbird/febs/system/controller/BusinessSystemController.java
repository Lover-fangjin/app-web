package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.BusinessSystem;
import cc.mrbird.febs.system.service.IBusinessSystemService;
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
 * 业务体系表 Controller
 *
 * @author cjs
 * @date 2020-03-31 13:51:13
 */
@Slf4j
@Validated
@Controller
public class BusinessSystemController extends BaseController {

    @Autowired
    private IBusinessSystemService businessSystemService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "businessSystem")
    public String businessSystemIndex(){
        return FebsUtil.view("businessSystem/businessSystem");
    }

    @GetMapping("businessSystem")
    @ResponseBody
    @RequiresPermissions("businessSystem:list")
    public FebsResponse getAllBusinessSystems(BusinessSystem businessSystem) {
        return new FebsResponse().success().data(businessSystemService.findBusinessSystems(businessSystem));
    }

    @GetMapping("businessSystem/list")
    @ResponseBody
    @RequiresPermissions("businessSystem:list")
    public FebsResponse businessSystemList(QueryRequest request, BusinessSystem businessSystem) {
        Map<String, Object> dataTable = getDataTable(this.businessSystemService.findBusinessSystems(request, businessSystem));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增BusinessSystem", exceptionMessage = "新增BusinessSystem失败")
    @PostMapping("businessSystem")
    @ResponseBody
    @RequiresPermissions("businessSystem:add")
    public FebsResponse addBusinessSystem(@Valid BusinessSystem businessSystem) {
        this.businessSystemService.createBusinessSystem(businessSystem);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除BusinessSystem", exceptionMessage = "删除BusinessSystem失败")
    @GetMapping("businessSystem/delete")
    @ResponseBody
    @RequiresPermissions("businessSystem:delete")
    public FebsResponse deleteBusinessSystem(BusinessSystem businessSystem) {
        this.businessSystemService.deleteBusinessSystem(businessSystem);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改BusinessSystem", exceptionMessage = "修改BusinessSystem失败")
    @PostMapping("businessSystem/update")
    @ResponseBody
    @RequiresPermissions("businessSystem:update")
    public FebsResponse updateBusinessSystem(BusinessSystem businessSystem) {
        this.businessSystemService.updateBusinessSystem(businessSystem);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改BusinessSystem", exceptionMessage = "导出Excel失败")
    @PostMapping("businessSystem/excel")
    @ResponseBody
    @RequiresPermissions("businessSystem:export")
    public void export(QueryRequest queryRequest, BusinessSystem businessSystem, HttpServletResponse response) {
        List<BusinessSystem> businessSystems = this.businessSystemService.findBusinessSystems(queryRequest, businessSystem).getRecords();
        ExcelKit.$Export(BusinessSystem.class, response).downXlsx(businessSystems, false);
    }
}
