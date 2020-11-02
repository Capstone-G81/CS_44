package com.web.controller;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Ttimu;
import com.service.TtimuService;
@Controller
public class TtimuController
{
       

    @Autowired
	private TtimuService ttimuService;
    
    @RequestMapping(value="/timuAdd")
    public String timuAdd(Ttimu timu,HttpServletRequest request) throws Exception
	{
    	ttimuService.insertTtimu(timu);
    	request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "timuMana.action?zid=" + timu.getZid());
		return "/common/succeed.jsp"; 
	}
	
    @RequestMapping(value="/timuMana")
	public String timuMana(HttpServletRequest request) throws Exception
	{
    	Ttimu timu = new Ttimu();
    	Long zid = Long.valueOf(request.getParameter("zid"));
    	timu.setZid(zid);
		List timuList=ttimuService.queryTtimuList(timu);
		request.setAttribute("timuList", timuList);
		request.setAttribute("zid", zid);
		return "/admin/timu/timuMana.jsp"; 
	}
	
    @RequestMapping(value="/timuDel")
	public String timuDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	ttimuService.deleteTtimu(id);
	 
		request.setAttribute("msg", "信息删除成功");
		return "/common/msg.jsp";
	}
	
    @RequestMapping(value="/timuAll")
	public String timuAll(HttpServletRequest request) throws Exception
	{
    	List timuList=ttimuService.queryTtimuList(new Ttimu());
		request.setAttribute("timuList", timuList);
		return "/qiantai/timu/timuAll.jsp"; 
	}
	
    @RequestMapping(value="/zuoyeDetails")
	public String  zuoyeDetails(HttpServletRequest request) throws Exception
	{
		Ttimu timu = new Ttimu();
    	Long zid = Long.valueOf(request.getParameter("zid"));
    	timu.setZid(zid);
		List timuList=ttimuService.queryTtimuList(timu);
		request.setAttribute("timuList", timuList);
		request.setAttribute("zid", zid);
		return "/admin/zuoyes/zuoyesAdd.jsp"; 
	}
	
    @RequestMapping(value="/ziciDafen")
	public String ziciDafen(HttpServletRequest request) throws Exception
	{
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
			String daan = request.getParameter(httpParamName);
			String daan1=ttimuService.queryTtimuById(Integer.parseInt(httpParamName)).getDaan();
			if(daan.equalsIgnoreCase(daan1))
			{
				fenshu+=ttimuService.queryTtimuById(Integer.parseInt(httpParamName)).getFenshu();
			}
		} 
		request.setAttribute("message", "本次测试得分："+fenshu);
    	request.setAttribute("path", "index.action");
		return "/common/succeed.jsp"; 
	}
	 

}
