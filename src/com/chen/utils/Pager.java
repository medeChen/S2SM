package com.chen.utils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Pager<T> implements Serializable {
	private static final long serialVersionUID = 4542617637761955078L;

	/**
	 * currentPage 当前页
	 */
	private int currentPage = 1;
	/**
	 * pageSize 每页大小
	 */
	private int pageSize = 10;
	/**
	 * pageTotal 总页数
	 */
	private int pageTotal;
	/**
	 * recordTotal 总条数
	 */
	private int recordTotal = 0;
	/**
	 * previousPage 前一页
	 */
	private int previousPage;
	/**
	 * nextPage 下一页
	 */
	private int nextPage;
	/**
	 * firstPage 第一页
	 */
	private int firstPage = 1;
	/**
	 * lastPage 最后一页
	 */
	private int lastPage;
	/**
	 * content 每页的内容
	 */
	private List<T> content;
	/**
	 * precontent 当前页的内容
	 */
	private List<T> currentcontent;

	// 以下set方式是需要赋值的
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		// 前一页
		if (this.currentPage > 1) {
			this.previousPage = this.currentPage - 1;
		} else {
			this.previousPage = this.firstPage;
		}
		// 下一页
		if (this.currentPage < this.lastPage) {
			this.nextPage = this.currentPage + 1;
		} else {
			this.nextPage = this.lastPage;
		}
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setRecordTotal(int recordTotal) {
		this.recordTotal = recordTotal;
		otherAttr();
	}

	public void setContent(List<T> content) {
		this.content = content;
		setRecordTotal(content.size());
	}
	public void otherAttr() {
		// 总页数
		this.pageTotal = this.recordTotal % this.pageSize > 0 ? this.recordTotal / this.pageSize + 1
				: this.recordTotal / this.pageSize;
		// 第一页
		this.firstPage = 1;
		// 最后一页
		this.lastPage = this.pageTotal;

	}

	// 放开私有属性
	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getPageTotal() {
		return pageTotal;
	}

	public int getRecordTotal() {
		return recordTotal;
	}

	public int getPreviousPage() {
		return previousPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public List<T> getContent() {
		return content;
	}

	public List<T> getCurrentcontent() {
		currentcontent = new ArrayList<T>();
		System.out.println(((currentPage - 1) * pageSize + recordTotal - previousPage * pageSize));
		for (int i = (currentPage - 1)
				* pageSize; i < ((currentPage == lastPage)
						? (previousPage != 1 ? ((currentPage - 1) * pageSize + recordTotal - previousPage * pageSize)
								: recordTotal)
						: (currentPage * pageSize)); i++) {
			currentcontent.add(this.content.get(i));
		}
		return currentcontent;
	}

	public void init(int currentPage, int pageSize, List<T> content) {
		setPageSize(pageSize);
        setContent(content);
        setCurrentPage(currentPage);
	}

	@Override
	public String toString() {
		return "Pager [currentPage=" + currentPage + ", pageSize=" + pageSize + ", pageTotal=" + pageTotal
				+ ", recordTotal=" + recordTotal + ", previousPage=" + previousPage + ", nextPage=" + nextPage
				+ ", firstPage=" + firstPage + ", lastPage=" + lastPage + ", content=" + content + "]";
	}

}