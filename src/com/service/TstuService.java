package com.service;
import java.util.List;
import com.pojo.Tstu;

public interface TstuService
{
        public List<Tstu> queryTstuList(Tstu tstu) throws Exception;
 
	public int insertTstu(Tstu tstu) throws Exception ;
	
	public int deleteTstu(int id) throws Exception ;
	
	public int updateTstu(Tstu tstu) throws Exception ;
	
	public Tstu queryTstuById(int id) throws Exception ;

}
