package cc.mrbird.febs.event.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.Site;
import cc.mrbird.febs.event.service.ISiteService;
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
 * 站点表 Controller
 *
 * @author cjs
 * @date 2020-03-05 17:15:39
 */
@Slf4j
@Validated
@Controller
public class SiteController extends BaseController {

    @Autowired
    private ISiteService siteService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "site")
    public String siteIndex(){
        return FebsUtil.view("site/site");
    }

    @GetMapping("site")
    @ResponseBody
    @RequiresPermissions("site:list")
    public FebsResponse getAllSites(Site site) {
        return new FebsResponse().success().data(siteService.findSites(site));
    }

    @GetMapping("site/list")
    @ResponseBody
    @RequiresPermissions("site:list")
    public FebsResponse siteList(QueryRequest request, Site site) {
        Map<String, Object> dataTable = getDataTable(this.siteService.findSites(request, site));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增Site", exceptionMessage = "新增Site失败")
    @PostMapping("site")
    @ResponseBody
    @RequiresPermissions("site:add")
    public FebsResponse addSite(@Valid Site site) {
        this.siteService.createSite(site);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除Site", exceptionMessage = "删除Site失败")
    @GetMapping("site/delete")
    @ResponseBody
    @RequiresPermissions("site:delete")
    public FebsResponse deleteSite(Site site) {
        this.siteService.deleteSite(site);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Site", exceptionMessage = "修改Site失败")
    @PostMapping("site/update")
    @ResponseBody
    @RequiresPermissions("site:update")
    public FebsResponse updateSite(Site site) {
        this.siteService.updateSite(site);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Site", exceptionMessage = "导出Excel失败")
    @PostMapping("site/excel")
    @ResponseBody
    @RequiresPermissions("site:export")
    public void export(QueryRequest queryRequest, Site site, HttpServletResponse response) {
        List<Site> sites = this.siteService.findSites(queryRequest, site).getRecords();
        ExcelKit.$Export(Site.class, response).downXlsx(sites, false);
    }
}
