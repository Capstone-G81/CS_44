package com.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pojo.Tadmin;
import com.pojo.Teacher;
import com.pojo.Tstu;
@Service
public class loginService
{
	@Autowired
	private TadminService tadminService;
	
	@Autowired
	private TstuService tstuService;
	
	@Autowired
    private TeacherService teacherService;
 
 
	
	
	public String login(String userName,String userPw,int userType)
	{
		System.out.println("userType"+userType);
		String result="no";
		try
		{
			Thread.sleep(700);
			
			
			if(userType==0)//系统管理员登陆
			{
				Tadmin tadmin = new Tadmin();
				tadmin.setUsername(userName);
				tadmin.setUserpw(userPw);
			 
				List adminList=tadminService.queryTadminList(tadmin);
				if(adminList.size()==0)
				{
					 result="no";
				}
				else
				{
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 Tadmin admin=(Tadmin)adminList.get(0);
					 session.setAttribute("userType", 0);
		             session.setAttribute("admin", admin);
		             result="yes";
				}
			}
		 
			if(userType==2)//学生登陆
			{
				Tstu tstu = new Tstu();
				tstu.setStuXuehao(userName);
				tstu.setLoginPw(userPw);
				List stuList=tstuService.queryTstuList(tstu);
				if(stuList.size()==0)
				{
					 result="no";
				}
				else
				{
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 Tstu stu=(Tstu) stuList.get(0);
					 session.setAttribute("userType", 2);
		             session.setAttribute("stu", stu);
		             result="yes";
				}
			}
			
			
			if(userType==1)//老师登陆
			{
				Teacher tea = new Teacher();
				tea.setTno(userName);
				tea.setPwd(userPw);
			 
				List tList=teacherService.queryTeacherList(tea);
				if(tList.size()==0)
				{
					 result="no";
				}
				else
				{
					 WebContext ctx = WebContextFactory.get(); 
					 HttpSession session=ctx.getSession(); 
					 Teacher teacher=(Teacher) tList.get(0);
					 session.setAttribute("userType", 1);
		             session.setAttribute("teacher", teacher);
		             result="yes";
				}
			}
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		return result;
	}

    public String adminPwEdit(String userPwNew)
    {
		System.out.println("DDDD");
    	try 
		{
			Thread.sleep(700);
			WebContext ctx = WebContextFactory.get(); 
			HttpSession session=ctx.getSession(); 
			 
			Tadmin admin=(Tadmin)session.getAttribute("admin");
			admin.setUserpw(userPwNew);
			
			tadminService.updateTadmin(admin);
			session.setAttribute("admin", admin);
		} 
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "yes";
    }
    
    
    public void logout()
    {
    	WebContext ctx = WebContextFactory.get(); 
		HttpSession session=ctx.getSession(); 
		session.setAttribute("userType", null);
    }
 
    
}
