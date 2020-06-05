package com.ztman.firectrl.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
public class Company {
    @ApiModelProperty(value = "ID")
    private Long id;

    @ApiModelProperty(value = "企业名称")
    private String companyName;

    @ApiModelProperty(value = "企业编号")
    private String companyNo;

    @ApiModelProperty(value = "法人姓名")
    private String legalPersonName;

    @ApiModelProperty(value = "法人电话")
    private String legalPersonMobile;

    @ApiModelProperty(value = "联系人姓名")
    private String contactPersonName;

    @ApiModelProperty(value = "联系人电话")
    private String contactPersonMobile;

    @ApiModelProperty(value = "成立时间")
    private String establiDate;

    @ApiModelProperty(value = "注册资本")
    private String registerCapital;

    @ApiModelProperty(value = "注册省")
    private String registerProvince;

    @ApiModelProperty(value = "注册市")
    private String registerCity;

    @ApiModelProperty(value = "注册区")
    private String registerDistrict;

    @ApiModelProperty(value = "注册街道")
    private String registerStreet;

    @ApiModelProperty(value = "注册详细地址")
    private String registerDetailAddress;

    @ApiModelProperty(value = "经营省")
    private String manageProvince;

    @ApiModelProperty(value = "经营市")
    private String manageCity;

    @ApiModelProperty(value = "经营区")
    private String manageDistrict;

    @ApiModelProperty(value = "经营街道")
    private String manageStreet;

    @ApiModelProperty(value = "经营详细地址")
    private String manageDetailAddress;

    @ApiModelProperty(value = "信用等级")
    private String creditRating;

    @ApiModelProperty(value = "业务类型")
    private String businessType;

    @ApiModelProperty(value = "企业类型")
    private String enterpriseType;

    @ApiModelProperty(value = "营业开始时间")
    private String businessStartTime;

    @ApiModelProperty(value = "营业结束时间")
    private String businessEndTime;

    @ApiModelProperty(value = "会员注册开始时间")
    private String registerStartTime;

    @ApiModelProperty(value = "会员注册结束时间")
    private String registerEndTime;

    @ApiModelProperty(value = "证书编号")
    private String certificateNumber;

    @ApiModelProperty(value = "统一信用代码")
    private String enterpriseCode;

    @ApiModelProperty(value = "消防技术服务类型")
    private String fireCtrlType;

    @ApiModelProperty(value = "经营范围")
    private String enterpriseScope;

    @ApiModelProperty(value = "注册地经度")
    private String registerLon;

    @ApiModelProperty(value = "注册地纬度")
    private String registerLat;

    @ApiModelProperty(value = "经营地经度")
    private String manageLon;

    @ApiModelProperty(value = "经营地纬度")
    private String manageLat;

    private String ext1;

    private String ext2;

    private String ext3;

    private String ext4;

    private String ext5;
}