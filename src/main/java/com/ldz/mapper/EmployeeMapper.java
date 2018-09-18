package com.ldz.mapper;

import java.util.List;

import com.ldz.model.Employee;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Integer employeeId);

    int insert(Employee record);

    int insertSelective(Employee record);

    Employee selectByPrimaryKey(Integer employeeId);
    
    Employee selectByPrimaryKeyAll(Integer employeeId);
    
    List<Employee> selectEmployeeByName(String employeeName);
    
    List<Employee> selectAll();

    int updateByPrimaryKeySelective(Employee record);

    int updateByPrimaryKey(Employee record);
}