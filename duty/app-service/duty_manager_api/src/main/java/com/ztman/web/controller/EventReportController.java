package com.ztman.web.controller;

import com.ztman.model.entity.Attachment;
import com.ztman.model.entity.EventReport;
import com.ztman.model.entity.EventReportAssist;
import com.ztman.model.service.EventDictService;
import com.ztman.model.service.EventReportService;
import com.ztman.model.service.UploadService;
import com.ztman.utils.JsonResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "event")
@Api(description = "事件上报")
public class EventReportController extends BaseController {

	@Autowired
	private EventReportService eventReportService;

	@Autowired
	private EventDictService eventDictService;

	@Autowired
	private UploadService uploadService;

	@Value("${prop.virtual-folder}")
	private String VIRTUAL_FOLDER;

	@ApiOperation("添加")
	@RequestMapping(value = "/eventReport", method = RequestMethod.POST)
	private JsonResult add(@RequestBody EventReportParam param) {
		int row = this.eventReportService.addOrUpdate(param.getEventReport(), param.getImageIds());
		JsonResult jsonResult = new JsonResult();
		if (row > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
		}
		return jsonResult;
	}

	@Data
	public static class EventReportParam {
		private EventReport eventReport;
		private Long [] imageIds;
	}

	@ApiOperation("查询所有")
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	private JsonResult queryAll(@RequestParam int pageNum,@RequestParam int pageSize,@RequestParam(required = false) Long userId) {

		PageHelper.startPage(pageNum,pageSize);
		List<HashMap<String, Object>> list = this.eventReportService.queryAll(userId);

		for (HashMap<String, Object> event : list) {
			Long erId = (Long)event.get("id");

			List<String> imagePaths = new ArrayList<String>();
			List<Attachment> attachments = this.uploadService.queryByDataId(erId);
			for (Attachment attachment: attachments) {
				String path = VIRTUAL_FOLDER.replaceAll("\\*","") + attachment.getUrl();
				imagePaths.add(path);
			}
			event.put("imgs", imagePaths);
		}

		PageInfo<HashMap<String, Object>> pageInfo = new PageInfo<HashMap<String, Object>>(list);
		JsonResult jsonResult = new JsonResult();
		jsonResult.setResultCode(200);
		jsonResult.setResultName("success");
		if (list != null && list.size() > 0) {
			jsonResult.setResult(pageInfo);
		}
		return jsonResult;
	}

	@ApiOperation("查询当前人员当日登记数和事件类型列表")
	@RequestMapping(value = "/todayTotal", method = RequestMethod.GET)
	private JsonResult todayTotal(@RequestParam String userId) {
		Map map = new HashMap<String, Object>();
		int total = this.eventReportService.todayTotal(userId);
		List<HashMap<String, Object>> dicts = this.eventDictService.queryAll();

		map.put("total", total);
		map.put("dicts", dicts);
		JsonResult jsonResult = new JsonResult();
		if (map != null && map.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}


	@ApiOperation("根据一级分类查询细分类")
	@RequestMapping(value = "/queryEventType", method = RequestMethod.GET)
	private JsonResult queryEventType(@RequestParam Long pid) {
		Map map = new HashMap<String, Object>();
		List<HashMap<String, Object>> dicts = this.eventDictService.selectEventType(pid);

		map.put("dicts", dicts);
		JsonResult jsonResult = new JsonResult();
		if (map != null && map.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}


	@ApiOperation("查询事件详情")
	@RequestMapping(value = "/queryById", method = RequestMethod.GET)
	private JsonResult queryById(@RequestParam Long reportId) {
		Map map = new HashMap<String, Object>();

		EventReportAssist eventReport = this.eventReportService.queryById(reportId);

		List<String> imagePaths = new ArrayList<String>();
		List<Attachment> attachments = this.uploadService.queryByDataId(reportId);
		for (Attachment attachment: attachments) {
			String path = VIRTUAL_FOLDER.replaceAll("\\*","") + attachment.getUrl();
			imagePaths.add(path);
		}

		map.put("event", eventReport);
		map.put("imgs", imagePaths);

		JsonResult jsonResult = new JsonResult();
		if (map != null) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(map);
		}
		return jsonResult;
	}

	@ApiOperation("删除事件")
	@RequestMapping(value = "deleteEvent", method = RequestMethod.POST)
	private JsonResult deleteEvent(@RequestBody DeleteEventParam param) {
		JsonResult jsonResult = new JsonResult();

		int row = this.eventReportService.delete(param.getId());

		jsonResult.setResult("删除失败");
		if (row>0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult("删除成功");
		}
		return jsonResult;
	}

	@Data
	public static class DeleteEventParam{
		@ApiModelProperty(value = "记录ID")
		private Long id;
	}

	@ApiOperation("撤销事件")
	@RequestMapping(value = "undoEvent", method = RequestMethod.POST)
	private JsonResult undoEvent(@RequestBody DeleteEventParam param) {
		JsonResult jsonResult = new JsonResult();

		int row = this.eventReportService.undoEvent(param.getId());

		jsonResult.setResult("撤销失败");
		if (row>0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult("撤销成功");
		}
		return jsonResult;
	}
}
