package com.util;

public class Random {
	public static String getCode(){
		// 把0-9存在一个字符串里
		StringBuffer array = new StringBuffer();
		for (int i = 0; i <= 9; i++) {
			array.append(i);
		}					
			int length = array.length();

		// 存储最后生成的字符串
		StringBuffer str = new StringBuffer("");
		for (int i = 0; i <6; i++) {
			// 获得随机位置的字符
			char c = array.charAt((int) (Math.random() * length));
			str.append(c);
		}

		return str.toString();
	}
	public static void main(String[] args) {
		System.out.println(getCode());
	}
			
	
}
