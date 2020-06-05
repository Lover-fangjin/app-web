package com.ztman.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class DutyInfo {
    private Long id;

    private Long siteId;

    private Long dutyUserId;

    private String dutyDate;

    private String dutyTime;

    private Date dutyStartTime;

    private Date dutyEndTime;

    private String location;

    private String remarks;
}