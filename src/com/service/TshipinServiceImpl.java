package com.service;
import java.util.List;
import com.pojo.Tshipin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TshipinMapper;
@Service
public class TshipinServiceImpl implements TshipinService
{
        
        @Autowired
	private TshipinMapper tshipinMapper;


	public List<Tshipin> queryTshipinList(Tshipin tshipin) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tshipin!=null){
			 
		}
		
		List<Tshipin> getTshipin = tshipinMapper.query(map);
		return getTshipin;
	}

	public int insertTshipin(Tshipin tshipin) throws Exception {
		
		return tshipinMapper.insertTshipin(tshipin);
	}

	public int deleteTshipin(int id) throws Exception {
		return tshipinMapper.deleteTshipin(id);
	}

	public int updateTshipin(Tshipin tshipin) throws Exception {
		return tshipinMapper.updateTshipin(tshipin);
	}
	
	public Tshipin queryTshipinById(int id) throws Exception {
		return tshipinMapper.queryTshipinById(id);
	}
 
}
