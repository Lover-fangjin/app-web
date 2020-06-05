package com.ztman.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class User {
    @ApiModelProperty(value = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "部门ID")
    private Long deptId;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "联系电话")
    private String mobile;

    @ApiModelProperty(value = "状态 0锁定 1有效")
    private String status;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "修改时间")
    private Date modifyTime;

    @ApiModelProperty(value = "最近访问时间")
    private Date lastLoginTime;

    @ApiModelProperty(value = "性别 0男 1女 2保密")
    private String ssex;

    @ApiModelProperty(value = "是否开启tab，0关闭 1开启")
    private String isTab;

    @ApiModelProperty(value = "主题")
    private String theme;

    @ApiModelProperty(value = "头像")
    private String avatar;

    @ApiModelProperty(value = "描述")
    private String description;

    @ApiModelProperty(value = "政治面貌")
    private String politicalAffil;

    @ApiModelProperty(value = "是否退役军人")
    private String exServiceman;

    @ApiModelProperty(value = "所属系统ID")
    private Long systemId;

    @ApiModelProperty(value = "所属系统")
    private String systemName;

    @ApiModelProperty(value = "所属行政区域ID")
    private Long adivisionId;

    @ApiModelProperty(value = "所属行政区域")
    private String adivisionName;

    @ApiModelProperty(value = "所属业务体系ID")
    private Long businessId;

    @ApiModelProperty(value = "所属业务体系")
    private String businessName;

    @ApiModelProperty(value = "所属公司ID")
    private String companyId;

    @ApiModelProperty(value = "所属公司")
    private String company;

    @ApiModelProperty(value = "岗位ID")
    private Long postId;

    @ApiModelProperty(value = "岗位")
    private String postName;

    @ApiModelProperty(value = "民族")
    private String nation;

    @ApiModelProperty(value = "籍贯")
    private String nativePlace;

    @ApiModelProperty(value = "身高")
    private String height;

    @ApiModelProperty(value = "学历")
    private String education;

    @ApiModelProperty(value = "姓名")
    private String truename;

    @ApiModelProperty(value = "是否在岗 1：上岗  0：离岗")
    private String isDuty;

    @ApiModelProperty(value = "上岗经度")
    private String lon;

    @ApiModelProperty(value = "上岗纬度")
    private String lat;

    @ApiModelProperty(value = "账户类型 1：管理员 2：普通用户")
    private String ext1;

    @ApiModelProperty(value = "员工编号")
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