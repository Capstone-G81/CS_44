package com.service;
import java.util.List;
import com.pojo.Ttimu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TtimuMapper;
@Service
public class TtimuServiceImpl implements TtimuService
{
        
    @Autowired
	private TtimuMapper ttimuMapper;


	public List<Ttimu> queryTtimuList(Ttimu ttimu) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(ttimu!=null){
			 map.put("zid", ttimu.getZid());
		}
		List<Ttimu> getTtimu = ttimuMapper.query(map);
		return getTtimu;
	}

	public int insertTtimu(Ttimu ttimu) throws Exception {
		
		return ttimuMapper.insertTtimu(ttimu);
	}

	public int deleteTtimu(int id) throws Exception {
		return ttimuMapper.deleteTtimu(id);
	}

	public int updateTtimu(Ttimu ttimu) throws Exception {
		return ttimuMapper.updateTtimu(ttimu);
	}
	
	public Ttimu queryTtimuById(int id) throws Exception {
		return ttimuMapper.queryTtimuById(id);
	}
 
}
