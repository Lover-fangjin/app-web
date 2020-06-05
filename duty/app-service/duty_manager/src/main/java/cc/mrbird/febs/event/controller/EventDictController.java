package cc.mrbird.febs.event.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.event.entity.EventDict;
import cc.mrbird.febs.event.service.IEventDictService;
import com.wuwenze.poi.ExcelKit;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

/**
 * 事件类型表 Controller
 *
 * @author cjs
 * @date 2020-03-09 10:33:57
 */
@Slf4j
@Validated
@Controller
public class EventDictController extends BaseController {

    @Autowired
    private IEventDictService eventDictService;

    @GetMapping(FebsConstant.VIEW_PREFIX + "eventDict")
    public String eventDictIndex(){
        return FebsUtil.view("eventDict/eventDict");
    }

    @GetMapping("eventDict")
    @ResponseBody
    @RequiresPermissions("eventDict:list")
    public FebsResponse getAllEventDicts(EventDict eventDict) {
        return new FebsResponse().success().data(eventDictService.findEventDicts(eventDict));
    }

    @GetMapping("eventDict/list")
    @ResponseBody
    @RequiresPermissions("eventDict:list")
    public FebsResponse eventDictList(QueryRequest request, EventDict eventDict) {
        Map<String, Object> dataTable = getDataTable(this.eventDictService.findEventDicts(request, eventDict));
        return new FebsResponse().success().data(dataTable);
    }

    @ControllerEndpoint(operation = "新增EventDict", exceptionMessage = "新增EventDict失败")
    @PostMapping("eventDict")
    @ResponseBody
    @RequiresPermissions("eventDict:add")
    public FebsResponse addEventDict(@Valid EventDict eventDict) {
        this.eventDictService.createEventDict(eventDict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "删除EventDict", exceptionMessage = "删除EventDict失败")
    @GetMapping("eventDict/delete")
    @ResponseBody
    @RequiresPermissions("eventDict:delete")
    public FebsResponse deleteEventDict(EventDict eventDict) {
        this.eventDictService.deleteEventDict(eventDict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改EventDict", exceptionMessage = "修改EventDict失败")
    @PostMapping("eventDict/update")
    @ResponseBody
    @RequiresPermissions("eventDict:update")
    public FebsResponse updateEventDict(EventDict eventDict) {
        this.eventDictService.updateEventDict(eventDict);
        return new FebsResponse().success();
    }

    @ControllerEndpoint(operation = "修改EventDict", exceptionMessage = "导出Excel失败")
    @PostMapping("eventDict/excel")
    @ResponseBody
    @RequiresPermissions("eventDict:export")
    public void export(QueryRequest queryRequest, EventDict eventDict, HttpServletResponse response) {
        List<EventDict> eventDicts = this.eventDictService.findEventDicts(queryRequest, eventDict).getRecords();
        ExcelKit.$Export(EventDict.class, response).downXlsx(eventDicts, false);
    }


    @GetMapping("eventDict/select/{pid}")
    @ResponseBody
    @ControllerEndpoint(exceptionMessage = "获取全部字典")
    public List<EventDict> geteventDictList(@PathVariable String pid) throws FebsException {
        return this.eventDictService.geteventDictList(pid);
    }

}
