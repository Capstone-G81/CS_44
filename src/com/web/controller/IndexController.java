package com.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tzuoyet;
@Controller
public class IndexController
{
 
    @RequestMapping(value="/index")
	public String index(Tzuoyet zuoyet,HttpServletRequest request) throws Exception
	{
 
		return "/qiantai/index.jsp"; 
	}
    
  

}
