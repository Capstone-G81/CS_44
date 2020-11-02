package com.service;
import java.util.List;
import com.pojo.Teacher;

public interface TeacherService
{
        public List<Teacher> queryTeacherList(Teacher teacher) throws Exception;
 
	public int insertTeacher(Teacher teacher) throws Exception ;
	
	public int deleteTeacher(int id) throws Exception ;
	
	public int updateTeacher(Teacher teacher) throws Exception ;
	
	public Teacher queryTeacherById(int id) throws Exception ;

}
