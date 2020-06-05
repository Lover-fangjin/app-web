package com.ztman.firectrl.model.entity;

import lombok.Data;

import java.util.Date;

/**
 * Created by Administrator on 2020/3/18.
 */
@Data
public class UserAssist {
    private Long id;

    private String username;

    private String mobile;

    private Date lastLoginTime;

    private String description;

    private Long companyId;

    private String company;

    private String truename;

    private String token;
}
