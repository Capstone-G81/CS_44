package com.service;
import java.util.List;
import com.pojo.Ttimu;

public interface TtimuService
{
        public List<Ttimu> queryTtimuList(Ttimu ttimu) throws Exception;
 
	public int insertTtimu(Ttimu ttimu) throws Exception ;
	
	public int deleteTtimu(int id) throws Exception ;
	
	public int updateTtimu(Ttimu ttimu) throws Exception ;
	
	public Ttimu queryTtimuById(int id) throws Exception ;

}
