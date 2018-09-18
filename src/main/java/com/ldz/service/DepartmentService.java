package com.ldz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ldz.mapper.DepartmentMapper;
import com.ldz.model.Department;

@Service
public class DepartmentService {
	@Autowired
	private DepartmentMapper departmentMapper;
	
	public List<Department> selectDepartments(){
		return departmentMapper.selectDepartments();
	}
}
