package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.TeacherMapper;
import com.pojo.Teacher;
@Service
public class TeacherServiceImpl implements TeacherService
{
        
        @Autowired
	private TeacherMapper teacherMapper;


	public List<Teacher> queryTeacherList(Teacher teacher) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(teacher!=null){
			 map.put("tno", teacher.getTno());
			 map.put("pwd", teacher.getPwd());
		}
		
		List<Teacher> getTeacher = teacherMapper.query(map);
		return getTeacher;
	}

	public int insertTeacher(Teacher teacher) throws Exception {
		
		return teacherMapper.insertTeacher(teacher);
	}

	public int deleteTeacher(int id) throws Exception {
		return teacherMapper.deleteTeacher(id);
	}

	public int updateTeacher(Teacher teacher) throws Exception {
		return teacherMapper.updateTeacher(teacher);
	}
	
	public Teacher queryTeacherById(int id) throws Exception {
		return teacherMapper.queryTeacherById(id);
	}
 
}
