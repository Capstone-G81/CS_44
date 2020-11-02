package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Tliuyan;
public interface TliuyanMapper
{

	public List<Tliuyan> findTliuyanList();
	
	public List<Tliuyan> query(Map<String,Object> inputParam);
	
	public int insertTliuyan(Tliuyan tliuyan);
	
	public int deleteTliuyan(int id);
	
	public int updateTliuyan(Tliuyan tliuyan);
	
	public Tliuyan queryTliuyanById(int id);

}
