package com.ztman.web.controller;

import com.ztman.model.service.TmpMeasureService;
import com.ztman.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2020/4/23.
 */
@RestController
@RequestMapping(value = "measure")
@Api(description = "测温")
public class TmpMeasureController extends BaseController {
    @Autowired
    private TmpMeasureService tmpMeasureService;


    @ApiOperation("查询温度统计")
    @RequestMapping(value = "/tmpStatistics", method = RequestMethod.GET)
    private JsonResult tmpStatistics() {
        List<HashMap<String, Object>> list = this.tmpMeasureService.tmpStatistics();


        JsonResult jsonResult = new JsonResult();
        jsonResult.setResultCode(200);
        jsonResult.setResultName("success");
        if (list != null && list.size() > 0) {
            jsonResult.setResult(list);
        }

        return jsonResult;
    }


    @ApiOperation("查询测温明细")
    @RequestMapping(value = "/statisticsList", method = RequestMethod.GET)
    private JsonResult statisticsList(@RequestParam String date, @RequestParam(required = false) String type) {
        List<HashMap<String, Object>> list = this.tmpMeasureService.statisticsList(date, type);


        JsonResult jsonResult = new JsonResult();
        jsonResult.setResultCode(200);
        jsonResult.setResultName("success");
        if (list != null && list.size() > 0) {
            jsonResult.setResult(list);
        }

        return jsonResult;
    }

}
