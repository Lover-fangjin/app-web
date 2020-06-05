package com.ztman.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class RegisterUser {
    @ApiModelProperty(value = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "姓名")
    private String truename;

    @ApiModelProperty(value = "性别 0男 1女 2保密")
    private String ssex;

    @ApiModelProperty(value = "所属系统ID")
    private Long systemId;

    @ApiModelProperty(value = "所属系统")
    private String systemName;

    @ApiModelProperty(value = "所属行政区域ID")
    private Long adivisionId;

    @ApiModelProperty(value = "所属行政区域")
    private String adivisionName;

    @ApiModelProperty(value = "所属业务角色ID")
    private Long businessId;

    @ApiModelProperty(value = "所属业务角色")
    private String businessName;

    @ApiModelProperty(value = "所属公司ID")
    private Long companyId;

    @ApiModelProperty(value = "所属公司")
    private String company;

    @ApiModelProperty(value = "队伍ID")
    private Long deptId;

    @ApiModelProperty(value = "职务ID")
    private Long postId;

    @ApiModelProperty(value = "职务岗位")
    private String postName;

    @ApiModelProperty(value = "民族")
    private String nation;

    @ApiModelProperty(value = "籍贯")
    private String nativePlace;

    @ApiModelProperty(value = "学历")
    private String education;

    @ApiModelProperty(value = "身高")
    private String height;

    @ApiModelProperty(value = "是否退役军人")
    private String exServiceman;

    @ApiModelProperty(value = "说明")
    private String description;

    @ApiModelProperty(value = "联系电话")
    private String mobile;

    @ApiModelProperty(value = "状态 0锁定 1有效")
    private String status;

    @ApiModelProperty(value = "是否在岗 1：上岗  0：离岗")
    private String isDuty;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;
}