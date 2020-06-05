package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Company;
import cc.mrbird.febs.system.service.ICompanyService;
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
 * 企业 Controller
 *
 * @author cjs
 * @date 2020-03-31 13:51:18
 */
@Slf4j
@Validated
@Controller
public class CompanyController extends BaseController {

    @Autowired
    private ICompanyService companyService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "company")
    public String companyIndex(){
        return FebsUtil.view("company/company");
    }

    @GetMapping("company")
    @ResponseBody
    @RequiresPermissions("company:list")
    public FebsResponse getAllCompanys(Company company) {
        return new FebsResponse().success().data(companyService.findCompanys(company));
    }

    @GetMapping("company/list")
    @ResponseBody
    @RequiresPermissions("company:list")
    public FebsResponse companyList(QueryRequest request, Company company) {
        Map<String, Object> dataTable = getDataTable(this.companyService.findCompanys(request, company));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增Company", exceptionMessage = "新增Company失败")
    @PostMapping("company")
    @ResponseBody
    @RequiresPermissions("company:add")
    public FebsResponse addCompany(@Valid Company company) {
        this.companyService.createCompany(company);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Company", exceptionMessage = "删除Company失败")
    @GetMapping("company/delete")
    @ResponseBody
    @RequiresPermissions("company:delete")
    public FebsResponse deleteCompany(Company company) {
        this.companyService.deleteCompany(company);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Company", exceptionMessage = "修改Company失败")
    @PostMapping("company/update")
    @ResponseBody
    @RequiresPermissions("company:update")
    public FebsResponse updateCompany(Company company) {
        this.companyService.updateCompany(company);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Company", exceptionMessage = "导出Excel失败")
    @PostMapping("company/excel")
    @ResponseBody
    @RequiresPermissions("company:export")
    public void export(QueryRequest queryRequest, Company company, HttpServletResponse response) {
        List<Company> companys = this.companyService.findCompanys(queryRequest, company).getRecords();
        ExcelKit.$Export(Company.class, response).downXlsx(companys, false);
    }
}
