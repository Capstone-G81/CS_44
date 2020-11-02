package com.service;
import java.util.List;
import com.pojo.Tzuoyet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TzuoyetMapper;
@Service
public class TzuoyetServiceImpl implements TzuoyetService
{
        
        @Autowired
	private TzuoyetMapper tzuoyetMapper;


	public List<Tzuoyet> queryTzuoyetList(Tzuoyet tzuoyet) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tzuoyet!=null){
			 
		}
		
		List<Tzuoyet> getTzuoyet = tzuoyetMapper.query(map);
		return getTzuoyet;
	}

	public int insertTzuoyet(Tzuoyet tzuoyet) throws Exception {
		
		return tzuoyetMapper.insertTzuoyet(tzuoyet);
	}

	public int deleteTzuoyet(int id) throws Exception {
		return tzuoyetMapper.deleteTzuoyet(id);
	}

	public int updateTzuoyet(Tzuoyet tzuoyet) throws Exception {
		return tzuoyetMapper.updateTzuoyet(tzuoyet);
	}
	
	public Tzuoyet queryTzuoyetById(int id) throws Exception {
		return tzuoyetMapper.queryTzuoyetById(id);
	}
 
}
