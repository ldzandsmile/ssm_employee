package com.ldz.utils;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.HashMap;
import java.util.Map;

public class MessageUtils {
	// 100请求失败 200请求成功
	private int code;

	// 提示信息
	private String message;

	// 所有信息
	private Map<String, Object> extend = new HashMap<String, Object>();

	public static MessageUtils success(){
		MessageUtils result = new MessageUtils();
		result.setCode(200);
		result.setMessage("处理成功");
		
		return result;
	}
	
	public static MessageUtils fail(){
		MessageUtils result = new MessageUtils();
		result.setCode(100);
		result.setMessage("处理失败");
		
		return result;
	}
	
	public static MessageUtils add(String s, Object o){
		MessageUtils result = new MessageUtils();
		result.getExtend().put(s, o);
		
		return result;
	}
	
	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
