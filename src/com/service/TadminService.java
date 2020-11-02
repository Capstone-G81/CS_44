package com.service;
import java.util.List;
import com.pojo.Tadmin;

public interface TadminService
{
        public List<Tadmin> queryTadminList(Tadmin tadmin) throws Exception;
 
	public int insertTadmin(Tadmin tadmin) throws Exception ;
	
	public int deleteTadmin(int id) throws Exception ;
	
	public int updateTadmin(Tadmin tadmin) throws Exception ;
	
	public Tadmin queryTadminById(int id) throws Exception ;

}
