package com.service;
import java.util.List;
import com.pojo.Tshipin;

public interface TshipinService
{
        public List<Tshipin> queryTshipinList(Tshipin tshipin) throws Exception;
 
	public int insertTshipin(Tshipin tshipin) throws Exception ;
	
	public int deleteTshipin(int id) throws Exception ;
	
	public int updateTshipin(Tshipin tshipin) throws Exception ;
	
	public Tshipin queryTshipinById(int id) throws Exception ;

}
