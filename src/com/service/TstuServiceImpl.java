package com.service;
import java.util.List;
import com.pojo.Tstu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TstuMapper;
@Service
public class TstuServiceImpl implements TstuService
{
        
    @Autowired
	private TstuMapper tstuMapper;


	public List<Tstu> queryTstuList(Tstu tstu) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tstu!=null){
			 map.put("stuXuehao", tstu.getStuXuehao());
			 map.put("loginPw", tstu.getLoginPw());
		}
		
		List<Tstu> getTstu = tstuMapper.query(map);
		return getTstu;
	}

	public int insertTstu(Tstu tstu) throws Exception {
		
		return tstuMapper.insertTstu(tstu);
	}

	public int deleteTstu(int id) throws Exception {
		return tstuMapper.deleteTstu(id);
	}

	public int updateTstu(Tstu tstu) throws Exception {
		return tstuMapper.updateTstu(tstu);
	}
	
	public Tstu queryTstuById(int id) throws Exception {
		return tstuMapper.queryTstuById(id);
	}
 
}
