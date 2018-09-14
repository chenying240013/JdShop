package com.service.inter;

import java.util.List;

import com.page.OrderCondition;
import com.page.PageInfo;
import com.vo.Jdproduct;

public interface UserProductService {
	// 指定种类下的所有商品的数量
	public int getTotalRecordSumByCategory(String cid) throws Exception;

	// 按查询条件查询 查询后总共有多少条记录
	public int getTotalRecordSumBySearchCondition(Jdproduct product) throws Exception;
	
	public List<Jdproduct> getPageByQuery(Jdproduct product, PageInfo pageInfo) throws Exception;

	//查询指定商品种类下的所有商品  + 排序 然后分页
	public List<Jdproduct> getAllByPageByCategory(PageInfo pageInfo,String cid,OrderCondition orderConditionObj) throws Exception;
	
	// 查1
	public Jdproduct getProductById(String pid) throws Exception;
}
