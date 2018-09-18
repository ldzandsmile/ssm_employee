package com.ldz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ldz.mapper.EmployeeMapper;
import com.ldz.model.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;
	
	public List<Employee> selectAll(){
		return employeeMapper.selectAll();
	}
	
	public void insertEmployee(Employee employee){
		employeeMapper.insertSelective(employee);
	}
	
	public List<Employee> selectEmployeeByName(String employeeName){
		return employeeMapper.selectEmployeeByName(employeeName);
	}
	
	public Employee selectEmployeeById(int employeeId){
		return employeeMapper.selectByPrimaryKey(employeeId);
	}
	
	public void updateEmployeeById(Employee employee){
		employeeMapper.updateByPrimaryKeySelective(employee);
	}
	
	public void deleteEmployeeById(int employeeId){
		employeeMapper.deleteByPrimaryKey(employeeId);
	}
}
