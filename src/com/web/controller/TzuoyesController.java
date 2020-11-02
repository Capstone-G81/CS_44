package com.web.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tstu;
import com.pojo.Tzuoyes;
import com.service.TtimuService;
import com.service.TzuoyesService;
@Controller
public class TzuoyesController
{
       

    @Autowired
	private TzuoyesService tzuoyesService;
    @Autowired
	private TtimuService ttimuService;
    @RequestMapping(value="/zuoyesAdd")
    public String zuoyesAdd(Tzuoyes zuoyes,HttpServletRequest request) throws Exception
	{
		Tstu stu=(Tstu)request.getSession().getAttribute("stu");
		zuoyes.setStuid(stu.getStuId());
		zuoyes.setHuifu("");
        int fenshu=0;
		Enumeration paraNames  =request.getParameterNames();
		ArrayList paraNameList = new ArrayList(); 
		while (paraNames.hasMoreElements()) 
		{ 
		     paraNameList.add(paraNames.nextElement()); 
		} 
		for (int i = 0; i < paraNameList.size(); i++) 
		{ 
			String httpParamName = (String) paraNameList.get(i); 
			System.out.println(httpParamName+"YYYY");
			if(httpParamName.indexOf("TM#")>=0){
				String httpParamName1 = httpParamName.split("#")[1];
				String daan = request.getParameter(httpParamName);
				String daan1=ttimuService.queryTtimuById(Integer.parseInt(httpParamName1)).getDaan();
				if(daan.equalsIgnoreCase(daan1))
				{
					fenshu+=ttimuService.queryTtimuById(Integer.parseInt(httpParamName1)).getFenshu();
				}
			}
			
		} 
		zuoyes.setKgt(new Long(fenshu));
		tzuoyesService.insertTzuoyes(zuoyes);
		request.setAttribute("msg", "单元自测完毕");
		return "/common/msg.jsp"; 
	}
	
    @RequestMapping(value="/zuoyesMine")
	public String zuoyesMine(HttpServletRequest request) throws Exception
	{
    	Tstu stu=(Tstu)request.getSession().getAttribute("stu");
		Tzuoyes zy = new Tzuoyes();
		zy.setStuid(stu.getStuId());
		List zuoyesList = tzuoyesService.queryTzuoyesList(zy);
		request.setAttribute("zuoyesList", zuoyesList);
		return "/admin/zuoyes/zuoyesMine.jsp";
	}
    @RequestMapping(value="/zuoyesDel")
	public String zuoyesDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	tzuoyesService.deleteTzuoyes(id);
    	request.setAttribute("msg", "作业删除完毕");
		return "/common/msg.jsp"; 
	}
	
    @RequestMapping(value="/zuoyesMana")
	public String zuoyesMana(HttpServletRequest request) throws Exception
	{
    	long zuoyetid = Long.parseLong(request.getParameter("zuoyetid"));
    	Tzuoyes zy = new Tzuoyes();
		zy.setZuoyetid(zuoyetid);
		List zuoyesList = tzuoyesService.queryTzuoyesList(zy);
 
		request.setAttribute("zuoyesList", zuoyesList);
		return "/admin/zuoyes/zuoyesMana.jsp";
	}
	
    @RequestMapping(value="/zuoyesHuifu")
	public String zuoyesHuifu(HttpServletRequest request) throws Exception
	{
    	
    	int id = Integer.parseInt(request.getParameter("id"));
    	String huifu = request.getParameter("huifu");
		Tzuoyes zuoyes=tzuoyesService.queryTzuoyesById(id);
		zuoyes.setZgt(Long.parseLong(huifu));
		zuoyes.setHuifu((zuoyes.getKgt()+zuoyes.getZgt())+"");
		request.setAttribute("msg", "批阅完毕");
		return "/common/msg.jsp"; 
	}

 
 

}
