package com.ztman.model.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class EventReportAssist {

    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "上报编号")
    private Long reportNo;

    @ApiModelProperty(value = "事件类别ID")
    private String eventClassId;

    @ApiModelProperty(value = "事类型ID")
    private String eventTypeId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "发生时间")
    private Date happenDate;

    @ApiModelProperty(value = "上报人ID")
    private Long userId;

    @ApiModelProperty(value = "当日上报数")
    private String total;

    @ApiModelProperty(value = "位置")
    private String location;

    @ApiModelProperty(value = "事件人姓名")
    private String name;

    @ApiModelProperty(value = "事件人电话")
    private String tel;

    @ApiModelProperty(value = "事件人身份证号")
    private String card;

    @ApiModelProperty(value = "健康码状态")
    private String hcodeStatus;

    @ApiModelProperty(value = "事件人体温")
    private String temperature;

    @ApiModelProperty(value = "事件人居住地址")
    private String address;

    @ApiModelProperty(value = "14天是否有出入记录")
    private String record;

    @ApiModelProperty(value = "所到地")
    private String arrival;

    @ApiModelProperty(value = "站点ID")
    private Long siteId;

    @ApiModelProperty(value = "事件详情")
    private String details;

    @ApiModelProperty(value = "事件备注")
    private String remarks;

    private String ext1;

    private String ext2;

    private String ext3;

    private String ext4;

    private String ext5;

    private String ext6;

    private String ext7;

    private String ext8;

    private String ext9;

    private String ext10;

    @ApiModelProperty(value = "姓名")
    private String truename;

    @ApiModelProperty(value = "联系电话")
    private String mobile;

    @ApiModelProperty(value = "上报类别")
    private String eventClass;

    @ApiModelProperty(value = "上报类型")
    private String eventType;

    @ApiModelProperty(value = "上报站点")
    private String siteName;
}