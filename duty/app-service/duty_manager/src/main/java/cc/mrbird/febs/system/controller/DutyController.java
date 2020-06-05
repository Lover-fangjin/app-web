package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Duty;
import cc.mrbird.febs.system.entity.DutyExport;
import cc.mrbird.febs.system.entity.DutyInfo;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.service.IDutyInfoService;
import cc.mrbird.febs.system.service.IDutyService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 *  Controller
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
@Slf4j
@Validated
@RestController
@RequestMapping("duty")
public class DutyController extends BaseController {

    @Autowired
    private IDutyService dutyService;

    @Autowired
    private IDutyInfoService dutyInfoService;

    @GetMapping("list")
    @ResponseBody
    @RequiresPermissions("duty:view")
    public FebsResponse dutyList(QueryRequest request, Duty duty) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        Map<String, Object> dataTable = getDataTable(this.dutyService.findDutyList(request, duty, user));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增Duty", exceptionMessage = "新增Duty失败")
    @PostMapping("add")
    @ResponseBody
    @RequiresPermissions("duty:add")
    public FebsResponse addDuty(@Valid Duty duty) throws ParseException {
        long startTime = duty.getStartTime().getTime();
        long endTime = duty.getEndTime().getTime();

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

        Calendar calendar = Calendar.getInstance();
        Date now = dateFormat.parse(dateFormat.format(calendar.getTime()));

        duty.setExt3("0");
        //判断任务状态，是否开始 状态：0未开始 1执行中 2已完成
        if(duty.getStartTime().getTime() <= now.getTime()){
            duty.setExt3("1");
        }
        if(duty.getEndTime().getTime() <= now.getTime()){
            duty.setExt3("2");
        }

        this.dutyService.createDuty(duty);

        //循环开始结束时间之间的差，拼接日期和时间
        int diff = (int) ((endTime - startTime) / (1000 * 3600 * 24));
        for (int i = 0; i < (diff+1); i++) {
            Calendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(duty.getStartTime());
            gregorianCalendar.add(Calendar.DAY_OF_MONTH, i);

            String duty_ = dateFormat.format(gregorianCalendar.getTime())+" ";

            String [] dutyTimeArr = duty.getExt2().split(" - ");
            //值班开始结束时间
            String dutyStartTimeStr = duty_ + dutyTimeArr[0];
            String dutyEndTimeStr = duty_ + dutyTimeArr[1];

            String [] users = duty.getExt1().split(",");
            DutyInfo dutyInfo = null;
            for (int j = 0; j < users.length; j++) {
                dutyInfo = new DutyInfo();
                dutyInfo.setDutyUserId(Long.parseLong(users[j]));
                dutyInfo.setDutyStartTime(sdf.parse(dutyStartTimeStr));
                dutyInfo.setDutyEndTime(sdf.parse(dutyEndTimeStr));
                dutyInfo.setExt1(duty.getId().toString());

                this.dutyInfoService.createDutyInfo(dutyInfo);
            }
        }

        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除值班记录", exceptionMessage = "删除值班记录失败")
    @GetMapping("delete/{dutyIds}")
    @RequiresPermissions("duty:delete")
    public FebsResponse deleteProjectInfos(@NotBlank(message = "{required}") @PathVariable String dutyIds) {
        String[] ids = dutyIds.split(StringPool.COMMA);
        this.dutyService.deleteDutys(ids);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改Duty", exceptionMessage = "修改Duty失败")
    @PostMapping("update")
    @ResponseBody
    @RequiresPermissions("duty:update")
    public FebsResponse updateDuty(Duty duty) {
        this.dutyService.updateDuty(duty);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "导出Excel", exceptionMessage = "导出Excel失败")
    @GetMapping("excel")
    @ResponseBody
    @RequiresPermissions("duty:export")
    public void export(QueryRequest queryRequest, Duty duty, HttpServletResponse response) {
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        List<DutyExport> dutys = this.dutyService.findDutysByExport(duty, user);
        ExcelKit.$Export(DutyExport.class, response).downXlsx(dutys, false);
    }

    @ControllerEndpoint(operation = "获取队伍下的人", exceptionMessage = "获取队伍下的人失败")
    @GetMapping("userlist/{deptid}")
    public FebsResponse getUsersByDeptid(@NotBlank(message = "{required}") @PathVariable String deptid) {
        return new FebsResponse().success().data(this.dutyService.getUsersByDeptid(deptid));
    }
}
