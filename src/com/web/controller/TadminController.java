package com.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tadmin;
import com.service.TadminService;
@Controller
public class TadminController
{
       
    
    @Autowired
	private TadminService tadminService;
	 
    @RequestMapping(value="/adminAdd")
    public String adminAdd(Tadmin tadmin,HttpServletRequest request) throws Exception
	{
    	tadminService.insertTadmin(tadmin);
    	request.setAttribute("message", "²Ù×÷³É¹¦");
    	request.setAttribute("path", "adminManage.action");
		return "/common/succeed.jsp";
	}
	
	
    
	
	 


}
