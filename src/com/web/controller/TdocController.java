package com.web.controller;

 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tdoc;
import com.service.TdocService;
@Controller
public class TdocController
{
       

    @Autowired
	private TdocService tdocService;
	
    @RequestMapping(value="/docAdd")
    public String docAdd(Tdoc doc,HttpServletRequest request) throws Exception
	{
		doc.setShijian(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		doc.setDel("no");
		tdocService.insertTdoc(doc);
	  	request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "docMana.action");
		return "/common/succeed.jsp";
	}
	@RequestMapping(value="/docDel")
	public String docDel(HttpServletRequest request) throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		tdocService.deleteTdoc(id);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "docMana.action");
		return "/common/succeed.jsp";
	}
	@RequestMapping(value="/docMana")
	public String docMana(HttpServletRequest request) throws Exception
	{
		List docList= tdocService.queryTdocList(new Tdoc());
		request.setAttribute("docList",docList);
		return "/admin/doc/docMana.jsp";
	}
	
	
	@RequestMapping(value="/docAll")
	public String docAll(HttpServletRequest request) throws Exception
	{
		List docList= tdocService.queryTdocList(new Tdoc());
		request.setAttribute("docList",docList);
		return "/qiantai/doc/docAll.jsp";
	}
	@RequestMapping(value="/docDetailQian")
	public String docDetailQian(HttpServletRequest request) throws Exception
	{
		int id = Integer.parseInt(request.getParameter("id"));
		Tdoc doc=tdocService.queryTdocById(id);
		request.setAttribute("doc",doc);
		return "/qiantai/doc/docDetailQian.jsp";
	}
	
 
 
 


}
