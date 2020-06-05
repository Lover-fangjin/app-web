package com.ztman.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Dept {
    private Long deptId;

    private Long parentId;

    private String deptName;

    private Long orderNum;

    private Date createTime;

    private Date modifyTime;

    private Long level;

    private String description;

    private Long systemId;

    private String systemName;

    private Long adivisionId;

    private String adivisionName;

    private Long businessId;

    private String businessName;

    private Long companyId;

    private String companyName;
}