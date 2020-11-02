package com.web.controller;

 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tliuyan;
import com.pojo.Tstu;
import com.service.TliuyanService;
@Controller
public class TliuyanController
{
       

    @Autowired
	private TliuyanService tliuyanService;
	 
    @RequestMapping(value="/liuyanAdd")
    public String liuyanAdd(Tliuyan liuyan,HttpServletRequest request) throws Exception
	{
	 
		HttpSession session=request.getSession();
		Tstu stu=(Tstu)session.getAttribute("stu");
		liuyan.setLiuyanshi(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		liuyan.setStuId(stu.getStuId());
		liuyan.setHuifu("");
		liuyan.setHuifushi("");
		tliuyanService.insertTliuyan(liuyan);
		request.setAttribute("msg", "问题发布完毕");
		return "/common/msg.jsp";
	}
	
    @RequestMapping(value="/liuyanMana")
	public String liuyanMana(HttpServletRequest request)throws Exception
	{
		List liuyanList=tliuyanService.queryTliuyanList(new Tliuyan());
		request.setAttribute("liuyanList",liuyanList);
		return "/admin/liuyan/liuyanMana.jsp";
	}
	
    @RequestMapping(value="/liuyanDel")
	public String liuyanDel(HttpServletRequest request)throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	tliuyanService.deleteTliuyan(id);
    	request.setAttribute("msg", "问题删除成功");
		return "/common/msg.jsp";
	}
	
    @RequestMapping(value="/liuyanHuifu")
	public String liuyanHuifu(HttpServletRequest request)throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	String huifu = request.getParameter("huifu");
		Tliuyan liuyan=tliuyanService.queryTliuyanById(id);
		liuyan.setHuifu(huifu);
		liuyan.setHuifushi(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date()));
		tliuyanService.updateTliuyan(liuyan);
		request.setAttribute("msg", "回复完毕");
		return "/common/msg.jsp";
	}
	
 
    @RequestMapping(value="/liuyanAll")
	public String liuyanAll(HttpServletRequest request)throws Exception
	{
    	List liuyanList=tliuyanService.queryTliuyanList(new Tliuyan());
		request.setAttribute("liuyanList",liuyanList);
		return "/qiantai/liuyan/liuyanAll.jsp";
	}
    @RequestMapping(value="/liuyanDetail")
	public String liuyanDetail(HttpServletRequest request)throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		Tliuyan liuyan=tliuyanService.queryTliuyanById(id);
		request.setAttribute("liuyan", liuyan);
		return "/qiantai/liuyan/liuyanDetail.jsp";
	}
 
	 
}
