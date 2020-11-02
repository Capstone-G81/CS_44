package com.service;
import java.util.List;
import com.pojo.Txuexi;

public interface TxuexiService
{
        public List<Txuexi> queryTxuexiList(Txuexi txuexi) throws Exception;
 
	public int insertTxuexi(Txuexi txuexi) throws Exception ;
	
	public int deleteTxuexi(int id) throws Exception ;
	
	public int updateTxuexi(Txuexi txuexi) throws Exception ;
	
	public Txuexi queryTxuexiById(int id) throws Exception ;

}
