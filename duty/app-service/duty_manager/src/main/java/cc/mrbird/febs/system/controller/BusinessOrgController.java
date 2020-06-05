package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.BusinessOrgTree;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.system.entity.BusinessOrg;
import cc.mrbird.febs.system.service.IBusinessOrgService;
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
 * @date 2020-03-19 15:39:02
 */
@Slf4j
@Validated
@RestController
@RequestMapping("businessorg")
public class BusinessOrgController extends BaseController {

    @Autowired
    private IBusinessOrgService businessOrgService;



    @GetMapping("select/tree")
    @ControllerEndpoint(exceptionMessage = "获取业务机构树失败")
    public List<BusinessOrgTree<BusinessOrg>> getBusinessOrgsTree() throws FebsException {
        return this.businessOrgService.findBusinessOrgs();
    }

    @GetMapping("list")
    @ResponseBody
    @RequiresPermissions("businessorg:view")
    public FebsResponse businessOrgList(QueryRequest request, BusinessOrg businessOrg) {
        Map<String, Object> dataTable = getDataTable(this.businessOrgService.findBusinessOrgsList(request, businessOrg));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增业务机构", exceptionMessage = "新增业务机构失败")
    @PostMapping("add")
    @RequiresPermissions("businessorg:add")
    public FebsResponse addBusinessOrg(@Valid BusinessOrg businessOrg) {
        this.businessOrgService.createBusinessOrg(businessOrg);
        return new FebsResponse().success();
    }


    @ControllerEndpoint(operation = "删除业务机构", exceptionMessage = "删除业务机构失败")
    @GetMapping("delete/{businessorgIds}")
    @RequiresPermissions("businessorg:delete")
    public FebsResponse deleteBusinessOrgs(@NotBlank(message = "{required}") @PathVariable String businessorgIds) {
        String[] ids = businessorgIds.split(StringPool.COMMA);
        this.businessOrgService.deleteBusinessOrgs(ids);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改业务机构", exceptionMessage = "修改业务机构失败")
    @PostMapping("update")
    @RequiresPermissions("businessorg:update")
    public FebsResponse updateBusinessOrg(BusinessOrg businessOrg) {
        this.businessOrgService.updateBusinessOrg(businessOrg);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出业务机构", exceptionMessage = "导出Excel失败")
    @PostMapping("excel")
    @RequiresPermissions("businessorg:export")
    public void export(QueryRequest queryRequest, BusinessOrg businessOrg, HttpServletResponse response) {
        List<BusinessOrg> businessOrgs = this.businessOrgService.findBusinessOrgsList(queryRequest, businessOrg).getRecords();
        ExcelKit.$Export(BusinessOrg.class, response).downXlsx(businessOrgs, false);
    }
}
