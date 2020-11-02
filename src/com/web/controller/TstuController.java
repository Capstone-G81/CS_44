package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Tstu;
import com.service.TstuService;
@Controller
public class TstuController
{
       

    @Autowired
	private TstuService tstuService;
    
    @RequestMapping(value="/stuAdd")
    public String stuAdd(Tstu stu,HttpServletRequest request) throws Exception
	{
     
		if(!canAddStudent(stu.getStuXuehao())){
		 
			request.setAttribute("msg", "学号重复！！！");
			return "/common/msg.jsp";
		}
		stu.setZhuangtai("b");
		stu.setDel("no");
		tstuService.insertTstu(stu);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "stuMana.action");
		return "/common/succeed.jsp";
	}
	
    @RequestMapping(value="/userReg")
	public String userReg(Tstu stu,HttpServletRequest request) throws Exception
	{
		if(!canAddStudent(stu.getStuXuehao())){
			request.setAttribute("msg", "学号重复！！！");
			request.setAttribute("message", "学号重复！！！");
	    	request.setAttribute("path", "/qiantai/userlogin/userReg.jsp");
			return "/common/succeed.jsp";
		}
		stu.setZhuangtai("b");
		stu.setDel("no");
		tstuService.insertTstu(stu);
		return "/common/add_success.jsp";
	}
	
	public boolean canAddStudent(String stuXuehao)
	{
		Tstu stu = new Tstu();
		stu.setStuXuehao(stuXuehao);
		List stuList;
		try {
			stuList = tstuService.queryTstuList(stu);
			if(stuList.size() > 0) {
				return false ;
			}else {
				return true ;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	
	@RequestMapping(value="/stuMana")
	public String stuMana(HttpServletRequest request) throws Exception
	{
		List stuList=tstuService.queryTstuList(new Tstu());
		request.setAttribute("stuList", stuList);
		return "/admin/stu/stuMana.jsp";
	}
	
	@RequestMapping(value="/stuDel")
	public String stuDel(HttpServletRequest request) throws Exception
	{
		int id = Integer.parseInt(request.getParameter("stuId"));
		tstuService.deleteTstu(id);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "stuMana.action");
		return "/common/succeed.jsp"; 
	}
		
	@RequestMapping(value="/stuEditMe")
	public String stuEditMe(Tstu stu,HttpServletRequest request) throws Exception
	{
		tstuService.updateTstu(stu);
		request.setAttribute("msg", "修改成功，重新登录后生效");
		return "/common/msg.jsp"; 
	}
}
