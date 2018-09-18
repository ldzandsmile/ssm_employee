package com.ldz.model;

import javax.validation.constraints.Pattern;

public class Employee {
    private Integer employeeId;

    @Pattern(regexp="^(([a-zA-Z0-9_-]{6,16})|([\u2E80-\u9FFF]{3,6}))$",
    			message="用户名支持6-16位英文数字或3-6位中文")
    private String employeeName;

    @Pattern(regexp="^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$",
    			message="邮箱格式不正确")
    private String employeeEmail;

    private Integer employeeDepartmentid;

    private Department department;
    
    public Department getDepartment() {
		return department;
	}

	public Employee() {
		super();
	}

	public Employee(Integer employeeId, String employeeName, String employeeEmail, Integer employeeDepartmentid) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeEmail = employeeEmail;
		this.employeeDepartmentid = employeeDepartmentid;
	}

	public Employee(Integer employeeId, String employeeName, String employeeEmail, Integer employeeDepartmentid,
			Department department) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeEmail = employeeEmail;
		this.employeeDepartmentid = employeeDepartmentid;
		this.department = department;
	}

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", employeeEmail="
				+ employeeEmail + ", employeeDepartmentid=" + employeeDepartmentid + ", department=" + department + "]";
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName == null ? null : employeeName.trim();
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail == null ? null : employeeEmail.trim();
    }

    public Integer getEmployeeDepartmentid() {
        return employeeDepartmentid;
    }

    public void setEmployeeDepartmentid(Integer employeeDepartmentid) {
        this.employeeDepartmentid = employeeDepartmentid;
    }
}