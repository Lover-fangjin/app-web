package com.ztman.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class NormalReport {

    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "上报编号")
    private Long reportNo;

    @ApiModelProperty(value = "上报人id")
    private Long userId;

    @ApiModelProperty(value = "发生时间")
    private Date happenDate;

    @ApiModelProperty(value = "当日上报总数")
    private String total;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "联系电话")
    private String tel;

    @ApiModelProperty(value = "来访事由")
    private String cause;

    @ApiModelProperty(value = "身份证号")
    private String card;

    @ApiModelProperty(value = "登记位置")
    private String address;

    @ApiModelProperty(value = "备注")
    private String remarke;

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
}