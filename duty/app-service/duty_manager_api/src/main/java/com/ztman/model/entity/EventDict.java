package com.ztman.model.entity;

import lombok.Data;

@Data
public class EventDict {
    private Long id;

    private String eventName;

    private String description;

    private Long pid;
}