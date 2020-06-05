package com.ztman.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class Attendance {
    @ApiModelProperty(value = "ID")
    private Long id;

    @ApiModelProperty(value = "打卡时间")
    private Date atTime;

    @ApiModelProperty(value = "打卡类型1：上岗 0：离岗")
    private String type;

    @ApiModelProperty(value = "打卡人")
    private Long userId;

    @ApiModelProperty(value = "是否异常")
    private String abnormal;

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