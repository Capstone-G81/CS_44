package com.service;
import java.util.List;
import com.pojo.Tzuoyet;

public interface TzuoyetService
{
        public List<Tzuoyet> queryTzuoyetList(Tzuoyet tzuoyet) throws Exception;
 
	public int insertTzuoyet(Tzuoyet tzuoyet) throws Exception ;
	
	public int deleteTzuoyet(int id) throws Exception ;
	
	public int updateTzuoyet(Tzuoyet tzuoyet) throws Exception ;
	
	public Tzuoyet queryTzuoyetById(int id) throws Exception ;

}
