package com.ztman.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class OsInspection {
    private Long id;

    private String iSum;

    private String fashao;

    private String wuyichang;

    private Date createTime;
}