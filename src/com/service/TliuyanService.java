package com.service;
import java.util.List;
import com.pojo.Tliuyan;

public interface TliuyanService
{
        public List<Tliuyan> queryTliuyanList(Tliuyan tliuyan) throws Exception;
 
	public int insertTliuyan(Tliuyan tliuyan) throws Exception ;
	
	public int deleteTliuyan(int id) throws Exception ;
	
	public int updateTliuyan(Tliuyan tliuyan) throws Exception ;
	
	public Tliuyan queryTliuyanById(int id) throws Exception ;

}
