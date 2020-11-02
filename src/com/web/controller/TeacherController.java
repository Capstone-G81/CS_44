package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Teacher;
import com.service.TeacherService;
@Controller
public class TeacherController
{
       

    @Autowired
	private TeacherService teacherService;

    @RequestMapping(value="/teacherMana")
    public String teacherMana(HttpServletRequest request) throws Exception
	{
		List teacherList=teacherService.queryTeacherList(new Teacher());
		request.setAttribute("teacherList", teacherList);
		return "/admin/teacher/teacherMana.jsp";
	}
    @RequestMapping(value="/teacherDetail")
	public String teacherDetail(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		Teacher teacher=teacherService.queryTeacherById(id);
		request.setAttribute("teacher", teacher);
		return "/admin/teacher/teacherDetail.jsp";
	}
    @RequestMapping(value="/teacherAdd")
	public String teacherAdd(Teacher teacher,HttpServletRequest request) throws Exception
	{
    	teacherService.insertTeacher(teacher);
    	
    	request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "teacherMana.action");
		return "/common/succeed.jsp"; 
	 
	}
    @RequestMapping(value="/teacherDel")
	public String teacherDel(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
    	teacherService.deleteTeacher(id);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "teacherMana.action");
		return "/common/succeed.jsp"; 
	}
    @RequestMapping(value="/toteacherEdit")
	public String toteacherEdit(HttpServletRequest request) throws Exception
	{
    	int id = Integer.parseInt(request.getParameter("id"));
		Teacher teacher=teacherService.queryTeacherById(id);
		request.setAttribute("teacher", teacher);
		return "/admin/teacher/teacherEdit.jsp";
	}
    @RequestMapping(value="/teacherEdit")
	public String teacherEdit(Teacher teacher,HttpServletRequest request) throws Exception
	{
    	teacherService.updateTeacher(teacher);
		request.setAttribute("message", "操作成功");
    	request.setAttribute("path", "teacherMana.action");
		return "/common/succeed.jsp"; 
	}
	
 
 

}
