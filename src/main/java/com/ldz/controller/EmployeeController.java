package com.ldz.controller;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ldz.mapper.EmployeeMapper;
import com.ldz.model.Department;
import com.ldz.model.Employee;
import com.ldz.service.EmployeeService;
import com.ldz.utils.MessageUtils;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
    @ResponseBody
    @RequestMapping(value="/selectAll", method=RequestMethod.GET)
    public MessageUtils selectAll(@RequestParam("page")int page){
        Map<String, Object> map = new HashMap<String, Object>();
        //调用分页插件   页数  每页条数
        PageHelper.startPage(page, 10, "employee_id asc");
		List<Employee> list = employeeService.selectAll();
		//包含所有分页有关的信息
		PageInfo pageInfo = new PageInfo(list);
		pageInfo.setNavigatePages(8);
		map.put("employeeList", pageInfo);
		
		MessageUtils messageUtils = MessageUtils.success();
		messageUtils.setExtend(map);
        return messageUtils;
    }
    
    //pojo没成功  
    @ResponseBody
    @RequestMapping(value="/insertEmployee", method=RequestMethod.POST)
    public boolean insertEmployee(@RequestParam("employeeName") String employeeName, @RequestParam("employeeEmail") String employeeEmail, @RequestParam("department") String department){
    	String[] s = department.split("号部门：");
    	Employee employee = new Employee(null, employeeName, employeeEmail, Integer.parseInt(s[0]));
    	employeeService.insertEmployee(employee);
    	return true;
    }
    
    @ResponseBody
    @RequestMapping(value="/selectEmployeeByName", method=RequestMethod.GET)
    public boolean selectEmployeeByName(@RequestParam("employeeName") String employeeName){
    	List<Employee> employeeList = employeeService.selectEmployeeByName(employeeName);
    	if(employeeList.size() == 0){
    		return false;
    	}else {
    		return true;
    	}
    }
    
    @ResponseBody
    @RequestMapping(value="/selectEmployeeById", method=RequestMethod.GET)
    public MessageUtils selectEmployeeById(@RequestParam("employeeId") int employeeId){
    	Employee employee = employeeService.selectEmployeeById(employeeId);
    	MessageUtils messageUtils = MessageUtils.success();
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("employee", employee);
    	messageUtils.setExtend(map);
    	
    	return messageUtils;
    }
    
    @ResponseBody
    @RequestMapping(value="/updateEmployeeById", method=RequestMethod.PUT)
    public boolean updateEmployeeById(@RequestParam("employeeId") int employeeId, @RequestParam("employeeName") String employeeName, @RequestParam("employeeEmail") String employeeEmail, @RequestParam("department") String department){
    	String[] s = department.split("号部门：");
    	Employee employee = new Employee(employeeId, employeeName, employeeEmail, Integer.parseInt(s[0]));
    	employeeService.updateEmployeeById(employee);
    	return true;
    }
    
    @ResponseBody
    @RequestMapping(value="/deleteEmployeeById", method=RequestMethod.DELETE)
    public boolean deleteEmployeeById(@RequestParam("employeeId") String s){
    	String[] employeeIds = s.split(",");
    	for(String employeeId : employeeIds){
    		employeeService.deleteEmployeeById(Integer.parseInt(employeeId));
    	}
    	return true;
    }
}
