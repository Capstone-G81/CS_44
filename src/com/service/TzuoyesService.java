package com.service;
import java.util.List;
import com.pojo.Tzuoyes;

public interface TzuoyesService
{
        public List<Tzuoyes> queryTzuoyesList(Tzuoyes tzuoyes) throws Exception;
 
	public int insertTzuoyes(Tzuoyes tzuoyes) throws Exception ;
	
	public int deleteTzuoyes(int id) throws Exception ;
	
	public int updateTzuoyes(Tzuoyes tzuoyes) throws Exception ;
	
	public Tzuoyes queryTzuoyesById(int id) throws Exception ;

}
