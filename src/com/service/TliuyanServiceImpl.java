package com.service;
import java.util.List;
import com.pojo.Tliuyan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TliuyanMapper;
@Service
public class TliuyanServiceImpl implements TliuyanService
{
        
        @Autowired
	private TliuyanMapper tliuyanMapper;


	public List<Tliuyan> queryTliuyanList(Tliuyan tliuyan) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tliuyan!=null){
			 
		}
		
		List<Tliuyan> getTliuyan = tliuyanMapper.query(map);
		return getTliuyan;
	}

	public int insertTliuyan(Tliuyan tliuyan) throws Exception {
		
		return tliuyanMapper.insertTliuyan(tliuyan);
	}

	public int deleteTliuyan(int id) throws Exception {
		return tliuyanMapper.deleteTliuyan(id);
	}

	public int updateTliuyan(Tliuyan tliuyan) throws Exception {
		return tliuyanMapper.updateTliuyan(tliuyan);
	}
	
	public Tliuyan queryTliuyanById(int id) throws Exception {
		return tliuyanMapper.queryTliuyanById(id);
	}
 
}
