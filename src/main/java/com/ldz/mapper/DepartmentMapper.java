package com.ldz.mapper;

import java.util.List;

import com.ldz.model.Department;

public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer departmentId);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer departmentId);
    
    Department selectByPrimaryKeyAll(Integer departmentId);
    
    List<Department> selectAll();
    
    List<Department> selectDepartments();

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);
}