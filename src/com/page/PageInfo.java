package com.page;

//分页bean
public class PageInfo {

	private int totalRecordCount;//总共有多少条记录
	
	private int perPageRecordCount = 5;//每页显示多少条
	
	private int requestPage;//请求第几页
	
	private int begin;//从第几条记录开始查
	
	private int currentPage;//当前页
	
	private int end;//查到第几条记录
	
	private int totalPageCount;//总共有多少页
	
	private int previousPage;
	
	private int nextPage;
	
	public void computerPreviousPage(){
		this.previousPage= (currentPage==1)?1:currentPage-1;
	}
	
	public void computerNextPage(){
		this.nextPage= (currentPage==totalPageCount)?totalPageCount:currentPage + 1;
	}
	
	
	
	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public void computerTotalPageCount(){
		
		//totalPageCount =  总的记录数%每页多少条==0?(总的记录/每页多少条):(总的记录/每页多少条)+1;
		this.totalPageCount = totalRecordCount%perPageRecordCount==0?(totalRecordCount/perPageRecordCount):(totalRecordCount/perPageRecordCount)+1;
	}
	
	public PageInfo(){
		
	}
	
	public PageInfo(int requestPage){
		this.requestPage = requestPage;
		
		this.begin = (requestPage-1) * perPageRecordCount + 1;
		this.end = requestPage * perPageRecordCount;
		 
		//设置当前页  
		this.setCurrentPage(requestPage);
		
		
	}
	
	public PageInfo(int requestPage,int perPageRecordCount){
		this.requestPage = requestPage;
		this.perPageRecordCount = perPageRecordCount;
		this.begin = (requestPage-1) * perPageRecordCount + 1;
		this.end = requestPage * perPageRecordCount;
		 
		//设置当前页  
		this.setCurrentPage(requestPage);
		
		
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
		
		//计算总共多少页  23
		this.computerTotalPageCount();//
		
		//计算上一页 和下一页
		this.computerPreviousPage();
		this.computerNextPage();
	}

	public int getPerPageRecordCount() {
		return perPageRecordCount;
	}

	public void setPerPageRecordCount(int perPageRecordCount) {
		this.perPageRecordCount = perPageRecordCount;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPreviousPage() {
		return previousPage;
	}

	public void setPreviousPage(int previousPage) {
		this.previousPage = previousPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	
}
