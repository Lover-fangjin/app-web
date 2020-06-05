package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.authentication.ShiroHelper;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.utils.DateUtil;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.NormalReport;
import cc.mrbird.febs.event.service.IEventReportService;
import cc.mrbird.febs.event.service.INormalReportService;
import cc.mrbird.febs.system.entity.*;
import cc.mrbird.febs.system.service.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.session.ExpiredSessionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author MrBird
 */
@Controller("systemView")
public class ViewController extends BaseController {

    @Autowired
    private IUserService userService;
    @Autowired
    private ShiroHelper shiroHelper;
    @Autowired
    private IEventReportService eventReportService;
    @Autowired
    private INormalReportService normalReportService;

    @Autowired
    private IBusinessOrgService businessOrgService;

    @Autowired
    private IProjectInfoService projectInfoService;
    @Autowired
    private IDeptService deptService;

    @Autowired
    private IDutyService dutyService;

    @GetMapping("login")
    @ResponseBody
    public Object login(HttpServletRequest request) {
        if (FebsUtil.isAjaxRequest(request)) {
            throw new ExpiredSessionException();
        } else {
            ModelAndView mav = new ModelAndView();
            mav.setViewName(FebsUtil.view("login"));
            return mav;
        }
    }

    @GetMapping("unauthorized")
    public String unauthorized() {
        return FebsUtil.view("error/403");
    }


    @GetMapping("/")
    public String redirectIndex() {
        return "redirect:/index";
    }

    @GetMapping("index")
    public String index(Model model) {
        AuthorizationInfo authorizationInfo = shiroHelper.getCurrentuserAuthorizationInfo();
        User user = super.getCurrentUser();
        User currentUserDetail = userService.findByName(user.getUsername());
        currentUserDetail.setPassword("It's a secret");
        model.addAttribute("user", currentUserDetail);
        model.addAttribute("permissions", authorizationInfo.getStringPermissions());
        model.addAttribute("roles", authorizationInfo.getRoles());
        return "index";
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "layout")
    public String layout() {
        return FebsUtil.view("layout");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "password/update")
    public String passwordUpdate() {
        return FebsUtil.view("system/user/passwordUpdate");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "user/profile")
    public String userProfile() {
        return FebsUtil.view("system/user/userProfile");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "user/avatar")
    public String userAvatar() {
        return FebsUtil.view("system/user/avatar");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "user/profile/update")
    public String profileUpdate() {
        return FebsUtil.view("system/user/profileUpdate");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/user")
    @RequiresPermissions("user:view")
    public String systemUser() {
        return FebsUtil.view("system/user/user");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/user/add")
    @RequiresPermissions("user:add")
    public String systemUserAdd() {
        return FebsUtil.view("system/user/userAdd");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/user/detail/{username}")
    @RequiresPermissions("user:view")
    public String systemUserDetail(@PathVariable String username, Model model) {
        resolveUserModel(username, model, false);
        return FebsUtil.view("system/user/userDetail");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/user/update/{username}")
    @RequiresPermissions("user:update")
    public String systemUserUpdate(@PathVariable String username, Model model) {
        resolveUserModel(username, model, false);
        return FebsUtil.view("system/user/userUpdate");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/role")
    @RequiresPermissions("role:view")
    public String systemRole() {
        return FebsUtil.view("system/role/role");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/menu")
    @RequiresPermissions("menu:view")
    public String systemMenu() {
        return FebsUtil.view("system/menu/menu");
    }



    @GetMapping(FebsConstant.VIEW_PREFIX + "system/dept")
    @RequiresPermissions("dept:view")
    public String systemDept() {
        return FebsUtil.view("system/dept/dept");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/dept/add")
    @RequiresPermissions("dept:add")
    public String systemDeptAdd() {
        return FebsUtil.view("system/dept/deptAdd");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/dept/detail/{deptId}")
    @RequiresPermissions("dept:view")
    public String systemDeptDetail(@PathVariable Long deptId, Model model) {
        resolveDeptModel(deptId, model, false);
        return FebsUtil.view("system/dept/deptDetail");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/dept/update/{deptId}")
    @RequiresPermissions("dept:update")
    public String systemDeptUpdate(@PathVariable Long deptId, Model model) {
        resolveDeptModel(deptId, model, false);
        return FebsUtil.view("system/dept/deptUpdate");
    }

    //应急处突业务
    @GetMapping(FebsConstant.VIEW_PREFIX + "event/eventreport")
    @RequiresPermissions("eventreport:view")
    public String eventReport() {
        return FebsUtil.view("event/eventreport/eventreport");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "event/eventreport/detail/{id}")
    @RequiresPermissions("eventreport:view")
    public String eventReportDetail(@PathVariable Long id, Model model) {
        resolveEventReportModel(id, model, false);
        return FebsUtil.view("event/eventreport/eventreportDetail");
    }

    //日常业务
    @GetMapping(FebsConstant.VIEW_PREFIX + "event/normalreport")
    @RequiresPermissions("normalreport:view")
    public String normalReport() {
        return FebsUtil.view("event/normalreport/normalreport");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "event/normalreport/detail/{id}")
    @RequiresPermissions("normalreport:view")
    public String normalReportDetail(@PathVariable Long id, Model model) {
        resolveNormalReportModel(id, model, false);
        return FebsUtil.view("event/normalreport/normalreportDetail");
    }

    //业务机构
    @GetMapping(FebsConstant.VIEW_PREFIX + "system/businessorg")
    @RequiresPermissions("businessorg:view")
    public String businessorg() {
        return FebsUtil.view("system/businessorg/businessorg");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/businessorg/add")
    @RequiresPermissions("businessorg:add")
    public String businessorgAdd() {
        return FebsUtil.view("system/businessorg/businessorgAdd");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/businessorg/detail/{businessorgId}")
    @RequiresPermissions("businessorg:view")
    public String businessorgDetail(@PathVariable Long businessorgId, Model model) {
        resolveBusinessOrgModel(businessorgId, model, false);
        return FebsUtil.view("system/businessorg/businessorgDetail");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/businessorg/update/{businessorgId}")
    @RequiresPermissions("businessorg:update")
    public String businessorgUpdate(@PathVariable Long businessorgId, Model model) {
        resolveBusinessOrgModel(businessorgId, model, false);
        return FebsUtil.view("system/businessorg/businessorgUpdate");
    }

    //项目信息
    @GetMapping(FebsConstant.VIEW_PREFIX + "system/projectinfo")
    @RequiresPermissions("projectinfo:view")
    public String projectinfo() {
        return FebsUtil.view("system/projectinfo/projectinfo");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/projectinfo/add")
    @RequiresPermissions("projectinfo:add")
    public String projectinfoAdd() {
        return FebsUtil.view("system/projectinfo/projectinfoAdd");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/projectinfo/detail/{projectinfoId}")
    @RequiresPermissions("projectinfo:view")
    public String projectinfoDetail(@PathVariable Long projectinfoId, Model model) {
        resolveProjectInfoModel(projectinfoId, model, false);
        return FebsUtil.view("system/projectinfo/projectinfoDetail");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "system/projectinfo/update/{projectinfoId}")
    @RequiresPermissions("projectinfo:update")
    public String projectinfoUpdate(@PathVariable Long projectinfoId, Model model) {
        resolveProjectInfoModel(projectinfoId, model, false);
        return FebsUtil.view("system/projectinfo/projectinfoUpdate");
    }


    //值班信息
    @GetMapping(FebsConstant.VIEW_PREFIX + "system/duty")
    @RequiresPermissions("duty:view")
    public String duty() {
        return FebsUtil.view("system/duty/duty");
    }


    @GetMapping(FebsConstant.VIEW_PREFIX + "duty/add")
    @RequiresPermissions("duty:add")
    public String dutyAdd() {
        return FebsUtil.view("system/duty/dutyAdd");
    }


    @GetMapping(FebsConstant.VIEW_PREFIX + "system/duty/detail/{dutyId}")
    @RequiresPermissions("duty:view")
    public String dutyDetail(@PathVariable Long dutyId, Model model) {
        resolveDutyModel(dutyId, model, false);
        return FebsUtil.view("system/duty/dutyDetail");
    }



    @RequestMapping(FebsConstant.VIEW_PREFIX + "index")
    public String pageIndex() {
        return FebsUtil.view("index");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "404")
    public String error404() {
        return FebsUtil.view("error/404");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "403")
    public String error403() {
        return FebsUtil.view("error/403");
    }

    @GetMapping(FebsConstant.VIEW_PREFIX + "500")
    public String error500() {
        return FebsUtil.view("error/500");
    }

    private void resolveUserModel(String username, Model model, Boolean transform) {
        User user = userService.findByName(username);
        model.addAttribute("user", user);
        if (transform) {
            String ssex = user.getSex();
            if (User.SEX_MALE.equals(ssex)) user.setSex("男");
            else if (User.SEX_FEMALE.equals(ssex)) user.setSex("女");
            else user.setSex("保密");
        }
        if (user.getLastLoginTime() != null)
            model.addAttribute("lastLoginTime", DateUtil.getDateFormat(user.getLastLoginTime(), DateUtil.FULL_TIME_SPLIT_PATTERN));
    }

    private void resolveDeptModel(Long deptId, Model model, Boolean transform) {
        Dept dept = deptService.findById(deptId);
        model.addAttribute("dept", dept);
    }
    private void resolveEventReportModel(Long id, Model model, Boolean transform) {
        EventReport eventReport = eventReportService.findById(id);
        model.addAttribute("eventreport", eventReport);
    }


    private void resolveNormalReportModel(Long id, Model model, Boolean transform) {
        NormalReport normalReport = normalReportService.findById(id);
        model.addAttribute("normalreport", normalReport);
    }
    private void resolveBusinessOrgModel(Long id, Model model, Boolean transform) {
        BusinessOrg businessOrg = businessOrgService.findById(id);
        model.addAttribute("businessorg", businessOrg);
    }


    private void resolveProjectInfoModel(Long id, Model model, Boolean transform) {
        ProjectInfo projectInfo = projectInfoService.findById(id);
        model.addAttribute("projectinfo", projectInfo);
    }

    private void resolveDutyModel(Long id, Model model, Boolean transform) {
        Duty duty= dutyService.findById(id);
        model.addAttribute("duty", duty);
    }
}
