package com.service.inter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import com.vo.CategoryOrder;



public interface UserOrderSerivceInter {
		//生成（添加）订单
		public int addOrder(CategoryOrder categoryOrder) throws Exception;
		//删除订单
		public int deleteOrderById(String cid) throws Exception;
		//查询订单
		public CategoryOrder getOrderById(String cid) throws Exception;
		//查询所有订单
		public List<CategoryOrder> getAllOrder() throws Exception;
		//获得订单总数
		public int getAllOrderSum() throws Exception;
		//修改订单
		public int updateCategory(CategoryOrder categoryOrder) throws Exception;
		// 上传图片
		public void upload(HttpServletRequest request, String productListUploadPath) throws Exception;
		//保存图片的路径到商品表
		public void saveImagePathInTable(String pid, List<String> fileNameList) throws Exception;
		//根据条件进行查询
		public List<CategoryOrder> getAllByQuery(CategoryOrder order) throws Exception;
		//查询订单状态   0表示未付款 1 表示已付款
		public List<CategoryOrder> OrdequeryOrderStater(int cstate)throws Exception;
		
}
