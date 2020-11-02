package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Teacher;
public interface TeacherMapper
{

	public List<Teacher> findTeacherList();
	
	public List<Teacher> query(Map<String,Object> inputParam);
	
	public int insertTeacher(Teacher teacher);
	
	public int deleteTeacher(int id);
	
	public int updateTeacher(Teacher teacher);
	
	public Teacher queryTeacherById(int id);

}
