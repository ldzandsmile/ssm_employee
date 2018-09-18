package com.ldz.test;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.ldz.service.EmployeeService;

/*
 * ʹ��spring�Ĳ��Թ���
 */
@RunWith(SpringJUnit4ClassRunner.class)
/*
 * ����web����
 */
@WebAppConfiguration
/*
 * ���������ļ�
 */
@ContextConfiguration(locations = { "class:applicationContext.xml", "classpath:springmvc.xml" })
public class SpringMvcTest {
	@Autowired
	private EmployeeService employeeService;
	
	//����mvc����
	private MockMvc mockMvc;

	//����IOC����
	@Autowired
	private WebApplicationContext context;
	
	@Before
	void setup(WebApplicationContext wac) {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
	}

	@Test
	void testPage() throws Exception {
	}
}
