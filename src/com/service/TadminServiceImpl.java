package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.TadminMapper;
import com.pojo.Tadmin;
@Service
public class TadminServiceImpl implements TadminService
{
        
        @Autowired
	private TadminMapper tadminMapper;


	public List<Tadmin> queryTadminList(Tadmin tadmin) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tadmin!=null){
			 map.put("username", tadmin.getUsername());
			 map.put("userpw", tadmin.getUserpw());
		}
		
		List<Tadmin> getTadmin = tadminMapper.query(map);
		return getTadmin;
	}

	public int insertTadmin(Tadmin tadmin) throws Exception {
		
		return tadminMapper.insertTadmin(tadmin);
	}

	public int deleteTadmin(int id) throws Exception {
		return tadminMapper.deleteTadmin(id);
	}

	public int updateTadmin(Tadmin tadmin) throws Exception {
		return tadminMapper.updateTadmin(tadmin);
	}
	
	public Tadmin queryTadminById(int id) throws Exception {
		return tadminMapper.queryTadminById(id);
	}
 
}
