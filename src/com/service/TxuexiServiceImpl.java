package com.service;
import java.util.List;
import com.pojo.Txuexi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.Map;
import com.mapper.TxuexiMapper;
@Service
public class TxuexiServiceImpl implements TxuexiService
{
        
        @Autowired
	private TxuexiMapper txuexiMapper;


	public List<Txuexi> queryTxuexiList(Txuexi txuexi) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(txuexi!=null){
			 
		}
		
		List<Txuexi> getTxuexi = txuexiMapper.query(map);
		return getTxuexi;
	}

	public int insertTxuexi(Txuexi txuexi) throws Exception {
		
		return txuexiMapper.insertTxuexi(txuexi);
	}

	public int deleteTxuexi(int id) throws Exception {
		return txuexiMapper.deleteTxuexi(id);
	}

	public int updateTxuexi(Txuexi txuexi) throws Exception {
		return txuexiMapper.updateTxuexi(txuexi);
	}
	
	public Txuexi queryTxuexiById(int id) throws Exception {
		return txuexiMapper.queryTxuexiById(id);
	}
 
}
