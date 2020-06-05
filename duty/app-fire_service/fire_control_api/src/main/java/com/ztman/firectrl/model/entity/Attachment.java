package com.ztman.firectrl.model.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.Date;

@Data
public class Attachment {
    @ApiModelProperty(value = "id")
    private Long id;

    @ApiModelProperty(value = "数据ID")
    private Long dataId;

    @ApiModelProperty(value = "文件名称")
    private String fileName;

    @ApiModelProperty(value = "文件大小")
    private Long fileSize;

    @ApiModelProperty(value = "文件类型")
    private String fileSuffix;

    @ApiModelProperty(value = "文件保存路径")
    private String url;

    @ApiModelProperty(value = "床就按时间")
    private Date createTime;
}