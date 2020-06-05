package com.ztman.firectrl.model.entity;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private Long id;

    private String username;

    private String password;

    private String mobile;

    private String status;

    private Date createTime;

    private Date lastLoginTime;

    private String description;

    private Long companyId;

    private String company;

    private String truename;

    private String ext1;

    private String ext2;

    private String ext3;

    private String ext4;

    private String ext5;
}