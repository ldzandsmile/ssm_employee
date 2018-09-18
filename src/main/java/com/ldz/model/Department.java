package com.ldz.model;

import java.util.List;

public class Department {
    private Integer departmentId;

    private String departmentName;

    private List<Employee> employeeList;
    
    public Department(Integer departmentId, String departmentName) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
	}

	public Department() {
		super();
	}

	public Department(Integer departmentId, String departmentName, List<Employee> employeeList) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.employeeList = employeeList;
	}

	@Override
	public String toString() {
		return "Department [departmentId=" + departmentId + ", departmentName=" + departmentName + ", employeeList="
				+ employeeList + "]";
	}

	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
	}

	public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName == null ? null : departmentName.trim();
    }
}