package com.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tshipin;
import com.service.TshipinService;
@Controller
public class TshipinController
{
       

    @Autowired
	private TshipinService tshipinService;
	 
    @RequestMapping(value="/shipinAdd")
    public String shipinAdd(Tshipin shipin,HttpServletRequest request) throws Exception
	{
	 
		shipin.setShijian(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		shipin.setDel("no");
		shipin.setZt("通过");
		tshipinService.insertTshipin(shipin);
	 	request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "shipinMana.action");
		return "/common/succeed.jsp";
	}
    @RequestMapping(value="/shipinMana")
	public String shipinMana(HttpServletRequest request) throws Exception
	{
		List shipinList=tshipinService.queryTshipinList(new Tshipin());
		request.setAttribute("shipinList", shipinList);
		return "/admin/shipin/shipinMana.jsp";
	}
	
	 
    @RequestMapping(value="/shipinDel")
	public String shipinDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("shipinId"));
    	tshipinService.deleteTshipin(id);
    	request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "shipinMana.action");
		return "/common/succeed.jsp";
	}
    
    @RequestMapping(value="/shipinAll")
	public String shipinAll(HttpServletRequest request) throws Exception
	{
    	List shipinList=tshipinService.queryTshipinList(new Tshipin());
		request.setAttribute("shipinList", shipinList);
		return "/qiantai/shipin/shipinAll.jsp";
	}
	
    @RequestMapping(value="/shipinDetailQian")
	public String shipinDetailQian(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("shipinId"));
		Tshipin shipin=tshipinService.queryTshipinById(id);
		request.setAttribute("shipin", shipin);
		return "/qiantai/shipin/shipinDetailQian.jsp";
	}
    
    @RequestMapping(value="/play")
	public String play(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("shipinId"));
    	Tshipin shipin=tshipinService.queryTshipinById(id);
		request.setAttribute("shipin", shipin);
		return "/qiantai/playvedio.jsp";
	}
	
	 
}
