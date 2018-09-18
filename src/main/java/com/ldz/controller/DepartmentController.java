package com.ldz.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ldz.service.DepartmentService;
import com.ldz.utils.MessageUtils;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;
	
	@ResponseBody
	@RequestMapping(value="selectAllDepartment", method=RequestMethod.GET)
	public MessageUtils selectAll(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("departmentList", departmentService.selectDepartments());
		MessageUtils message = MessageUtils.success();
		message.setExtend(map);
		
		return message;
	}
}
