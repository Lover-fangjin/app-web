package com.ztman.model.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class NormalReportAssist {

    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "登记人")
    private String djName;

    @ApiModelProperty(value = "登记人电话")
    private String djTel;

    @ApiModelProperty(value = "站点")
    private String siteName;

    @ApiModelProperty(value = "登记时间")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
    private Date happendDate;

    @ApiModelProperty(value = "登记位置")
    private String address;

    @ApiModelProperty(value = "访客姓名")
    private String fkName;

    @ApiModelProperty(value = "访客电话")
    private String fkTel;

    @ApiModelProperty(value = "来访事由")
    private String fkCause;

    @ApiModelProperty(value = "备注")
    private String fkRemarke;
}