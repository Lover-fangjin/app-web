package com.ztman.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * Created by Administrator on 2020/3/18.
 */
@Data
public class UserAssist implements Serializable {

    private static final long serialVersionUID = -2303921656988700715L;

    @ApiModelProperty(value = "用户ID")
    private Long userId;

    @ApiModelProperty(value = "用户名")
    private String username;

    @ApiModelProperty(value = "部门名称")
    private String deptName;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "联系电话")
    private String mobile;

    @ApiModelProperty(value = "状态 0锁定 1有效")
    private String status;

    @ApiModelProperty(value = "政治面貌")
    private String politicalAffil;

    @ApiModelProperty(value = "是否退役军人")
    private String exServiceman;

    @ApiModelProperty(value = "所属公司")
    private String company;

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

    @ApiModelProperty(value = "角色编号")
    private String roleId;

    @ApiModelProperty(value = "token")
    private String token;
}
