package com.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.TzuoyesMapper;
import com.pojo.Tzuoyes;
@Service
public class TzuoyesServiceImpl implements TzuoyesService
{
        
        @Autowired
	private TzuoyesMapper tzuoyesMapper;


	public List<Tzuoyes> queryTzuoyesList(Tzuoyes tzuoyes) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tzuoyes!=null){
			 map.put("stuid", tzuoyes.getStuid());
			 map.put("zuoyetid", tzuoyes.getZuoyetid());
			 
		}
		List<Tzuoyes> getTzuoyes = tzuoyesMapper.query(map);
		return getTzuoyes;
	}

	public int insertTzuoyes(Tzuoyes tzuoyes) throws Exception {
		
		return tzuoyesMapper.insertTzuoyes(tzuoyes);
	}

	public int deleteTzuoyes(int id) throws Exception {
		return tzuoyesMapper.deleteTzuoyes(id);
	}

	public int updateTzuoyes(Tzuoyes tzuoyes) throws Exception {
		return tzuoyesMapper.updateTzuoyes(tzuoyes);
	}
	
	public Tzuoyes queryTzuoyesById(int id) throws Exception {
		return tzuoyesMapper.queryTzuoyesById(id);
	}
 
}
