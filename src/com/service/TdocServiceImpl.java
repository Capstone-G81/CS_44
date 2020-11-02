package com.service;
import java.util.List;
import com.pojo.Tdoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TdocMapper;
@Service
public class TdocServiceImpl implements TdocService
{
        
        @Autowired
	private TdocMapper tdocMapper;


	public List<Tdoc> queryTdocList(Tdoc tdoc) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tdoc!=null){
			 
		}
		
		List<Tdoc> getTdoc = tdocMapper.query(map);
		return getTdoc;
	}

	public int insertTdoc(Tdoc tdoc) throws Exception {
		
		return tdocMapper.insertTdoc(tdoc);
	}

	public int deleteTdoc(int id) throws Exception {
		return tdocMapper.deleteTdoc(id);
	}

	public int updateTdoc(Tdoc tdoc) throws Exception {
		return tdocMapper.updateTdoc(tdoc);
	}
	
	public Tdoc queryTdocById(int id) throws Exception {
		return tdocMapper.queryTdocById(id);
	}
 
}
