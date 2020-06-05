package com.ztman.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class HealthCode {
    private Long id;

    private String hSum;

    private String wuyichang;

    private String yisi;

    private String geli;

    private String quezhen;

    private Date createTime;
}