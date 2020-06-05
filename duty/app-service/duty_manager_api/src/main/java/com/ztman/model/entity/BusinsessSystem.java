package com.ztman.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class BusinsessSystem {
    private Long id;

    private String name;

    private String status;

    private Long createId;

    private Date createTime;
}