package com.mapper;
import java.util.List;
import java.util.Map;

import com.pojo.Txuexi;
public interface TxuexiMapper
{

	public List<Txuexi> findTxuexiList();
	
	public List<Txuexi> query(Map<String,Object> inputParam);
	
	public int insertTxuexi(Txuexi txuexi);
	
	public int deleteTxuexi(int id);
	
	public int updateTxuexi(Txuexi txuexi);
	
	public Txuexi queryTxuexiById(int id);

}
