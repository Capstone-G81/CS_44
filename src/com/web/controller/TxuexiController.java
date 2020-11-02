package com.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Txuexi;
import com.service.TxuexiService;
@Controller
public class TxuexiController
{
       

    @Autowired
	private TxuexiService txuexiService;
	 
    @RequestMapping(value="/xuexiAdd")
    public String xuexiAdd(Txuexi xuexi,HttpServletRequest request) throws Exception
	{
		xuexi.setShijian(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		xuexi.setDel("no");
		txuexiService.insertTxuexi(xuexi);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "xuexiMana.action");
		return "/common/succeed.jsp"; 
	}
    
    @RequestMapping(value="/xuexiDel")
	public String xuexiDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		txuexiService.deleteTxuexi(id);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "xuexiMana.action");
    	return "/common/succeed.jsp"; 
	}
    @RequestMapping(value="/xuexiMana")
	public String xuexiMana(HttpServletRequest request) throws Exception
	{
		List xuexiList=txuexiService.queryTxuexiList(new Txuexi());
		request.setAttribute("xuexiList", xuexiList);
		return "/admin/xuexi/xuexiMana.jsp";
	}
	
	
    @RequestMapping(value="/xuexiAll")
	public String xuexiAll(HttpServletRequest request) throws Exception
	{
    	List xuexiList=txuexiService.queryTxuexiList(new Txuexi());
		request.setAttribute("xuexiList", xuexiList);
		return "/qiantai/xuexi/xuexiAll.jsp";
	}
    @RequestMapping(value="/xuexiDetailQian")
	public String xuexiDetailQian(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		Txuexi xuexi=txuexiService.queryTxuexiById(id);
		request.setAttribute("xuexi", xuexi);
		return "/qiantai/xuexi/xuexiDetailQian.jsp";
	}
 
}
