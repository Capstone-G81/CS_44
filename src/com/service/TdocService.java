package com.service;
import java.util.List;
import com.pojo.Tdoc;

public interface TdocService
{
        public List<Tdoc> queryTdocList(Tdoc tdoc) throws Exception;
 
	public int insertTdoc(Tdoc tdoc) throws Exception ;
	
	public int deleteTdoc(int id) throws Exception ;
	
	public int updateTdoc(Tdoc tdoc) throws Exception ;
	
	public Tdoc queryTdocById(int id) throws Exception ;

}
