package com.ztman.model.entity;

import lombok.Data;

@Data
public class Employee {
	private Integer eid;

	private String ename;

	private String esex;

	private com.ztman.model.entity.Department department;
}