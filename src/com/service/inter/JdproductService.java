package com.service.inter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.page.PageInfo;
import com.vo.Jdproduct;

public interface JdproductService {

	// 添加商品
	public int addProduct(Jdproduct product) throws Exception;

	// 删除商品
	public int deleteProductById(String pid) throws Exception;

	// 修改
	public int updateProduct(Jdproduct product) throws Exception;

	public int getTotalRecordSum() throws Exception;

	// 查所有按分页
	public List<Jdproduct> getAllByPage(PageInfo pageInfo) throws Exception;

	// 按查询条件查询 查询后总共有多少条记录
	public int getTotalRecordSumBySearchCondition(Jdproduct product)
			throws Exception;

	// 按查询条件查询后 分页
	public List<Jdproduct> getPageByQuery(Jdproduct product, PageInfo pageInfo)
			throws Exception;

	// 查1
	public Jdproduct getProductById(String pid) throws Exception;

	// 产品上架
	public void productUp(Integer pid) throws Exception;

	// 产品下架
	public void productDown(Integer pid) throws Exception;

	// 上传图片
	public void upload(HttpServletRequest request, String productListUploadPath) throws Exception;

	//保存图片的路径到商品表
	public void saveImagePathInTable(String pid, List<String> fileNameList) throws Exception;
}
