package com.util;

//产品的字典类
public class ProductDictionary {

	/**
	 * 
	 *公司: 蓝桥杯软件学院
	 *作者: 张兆亿
	 *时间: 2016年8月29日下午1:43:56
	 *功能: onsale 数字------>中文
	 *@param intOnsale 产品的状态  0表示下架  1表示上架
	 *@return onsale状态对应的中文含义   如果是0  返回字符串"下架"  如果是1 返回 "上架"
	 */
	public static String onsaleIntToStr(int onsale){
		String strOnsale= "";
		
		if(onsale==0){
			strOnsale = "下架";
		}else if(onsale==1){
			strOnsale = "上架";
		}
		
		return strOnsale;
	}
	
	/**
	 * 
	 *公司: 蓝桥杯软件学院
	 *作者: 张兆亿
	 *时间: 2016年8月29日下午1:43:56
	 *功能: onsale 中文------>数字
	 *@param intOnsale    如果是"下架"  返回0  如果是"上架" 返回 1
	 *@return 产品的状态  0表示下架  1表示上架 
	 */
	public static Integer onsaleStrToInt(String onsale){
		Integer intOnsale = null;
		
		if("下架".equals(onsale)){
			intOnsale = 0;
		}else if("上架".equals(onsale)){
			intOnsale = 1;
		}
		
		return intOnsale;
	}
}
