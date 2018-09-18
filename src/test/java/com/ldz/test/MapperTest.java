package com.ldz.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.concurrent.Semaphore;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ldz.mapper.DepartmentMapper;
import com.ldz.mapper.EmployeeMapper;
import com.ldz.model.Department;
import com.ldz.model.Employee;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext.xml")
public class MapperTest {
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private EmployeeMapper employeeMapper;
	
	@Autowired
	private DepartmentMapper departmentMapper;
	
	@Test
	public void test(){
//		departmentMapper.insert(new Department(1,"开发部"));
//		departmentMapper.insert(new Department(2,"市场部"));
		
//		for(int i = 101;i<102;i++){
//			employeeMapper.insert(new Employee(i,"张" + i , "a@qq.com", 2));
//		}
		
//		Department department = departmentMapper.selectByPrimaryKeyAll(1);
//		System.out.println(department);
		
//		Employee employee = employeeMapper.selectByPrimaryKeyAll(1);
//		System.out.println(employee);
		
//		List<Employee> listEmployee = employeeMapper.selectAll();
//		System.out.println(listEmployee);
		
//		List<Department> list = departmentMapper.selectDepartments();
//		System.out.println(list.size());
		
//		employeeMapper.insertSelective(new Employee(102, "张三101", "a@qq.com", 1));
//		System.out.println(employeeMapper.selectEmployeeByName("张三丰"));
		
		employeeMapper.updateByPrimaryKeySelective(new Employee(1,"张00","aa@qq.com",2));
	}
}
