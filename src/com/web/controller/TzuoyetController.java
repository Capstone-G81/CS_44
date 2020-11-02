package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tzuoyet;
import com.service.TzuoyetService;
@Controller
public class TzuoyetController
{
       

    @Autowired
	private TzuoyetService tzuoyetService;
	
    @RequestMapping(value="/zuoyetAdd")
	public String zuoyetAdd(Tzuoyet zuoyet,HttpServletRequest request) throws Exception
	{
		zuoyet.setTeaId(0l);
		tzuoyetService.insertTzuoyet(zuoyet);
		request.setAttribute("msg", "信息添加完毕");
		return "/common/msg.jsp"; 
	}
    @RequestMapping(value="/zuoyetMine")
	public String zuoyetMine(HttpServletRequest request) throws Exception
	{
		List zuoyetList=tzuoyetService.queryTzuoyetList(new Tzuoyet());
		request.setAttribute("zuoyetList", zuoyetList);
		return "/admin/zuoyet/zuoyetMine.jsp";
	}
	
    @RequestMapping(value="/zuoyetDel")
	public String zuoyetDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	tzuoyetService.deleteTzuoyet(id);
    	request.setAttribute("msg", "信息删除完毕");
		return "/common/msg.jsp"; 
	}
    @RequestMapping(value="/zuoyetAll")
	public String zuoyetAll(HttpServletRequest request) throws Exception
	{
	 
    	List zuoyetList=tzuoyetService.queryTzuoyetList(new Tzuoyet());
		request.setAttribute("zuoyetList", zuoyetList);
		return "/admin/zuoyet/zuoyetAll.jsp";
	}

    @RequestMapping(value="/zuoyeView")
	public String zuoyeView(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		Tzuoyet zuoyet=tzuoyetService.queryTzuoyetById(id);
 
		request.setAttribute("zuoyet", zuoyet);
		return "/admin/zuoyet/zuoyetView.jsp";
	}

	 
	
  

}
