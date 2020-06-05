package com.ztman.web.controller;

import com.ztman.model.service.ProjectService;
import com.ztman.model.service.SiteService;
import com.ztman.model.service.UserService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value = "site")
@Api(description = "站点")
public class SiteController extends BaseController {

	@Autowired
	private ProjectService projectService;

	@Autowired
	private SiteService siteService;

	@Autowired
	private UserService userService;

	@ApiOperation("查询所有站点")
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	private JsonResult queryAll() {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();


		String filePath = "";

		List<HashMap<String, Object>> projectList = this.projectService.queryAll();
		for (HashMap<String, Object> project: projectList) {
			List<HashMap<String, Object>> siteList = this.siteService.queryAll((Long) project.get("id"));
			String proportion = this.siteService.dutyProportion((String) project.get("deptIds"));

			List<HashMap<String, Object>> siteList2 = new ArrayList<HashMap<String, Object>>();
			for (HashMap<String, Object> site : siteList) {
				List<HashMap<String, Object>> userList = this.userService.queryByDeptId((Long) site.get("dept_id"), filePath);
				site.put("users", userList);
				siteList2.add(site);
			}

			project.put("sites", siteList2);
			project.put("proportion", proportion);

			list.add(project);
		}

//		List<HashMap<String, Object>> siteList = this.siteService.queryAll();
//		for (HashMap<String, Object> site: siteList) {
//			List<HashMap<String, Object>> dutyMap = this.dutyInfoService.queryDutyBySiteId((Long)site.get("ID"));
//
//			site.put("peoples", dutyMap);
//			list.add(site);
//		}

		JsonResult jsonResult = new JsonResult();
		if (list != null && list.size() > 0) {
			jsonResult.setResultCode(200);
			jsonResult.setResultName("success");
			jsonResult.setResult(list);
		}
		return jsonResult;
	}

}
