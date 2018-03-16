package com.chen.model;

import java.sql.Date;

public class Orders {
	private String orders_id;
	private String buyer_id;
	private String goods_id;
	private int goods_num;
	private Date time;
	private int book_state;
	private String address_id;
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getOrders_id() {
		return orders_id;
	}
	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}
	public String getBuyer_id() {
		return buyer_id;
	}
	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getBook_state() {
		return book_state;
	}
	public void setBook_state(int book_state) {
		this.book_state = book_state;
	}
	public String getAddress_id() {
		return address_id;
	}
	public void setAddress_id(String address_id) {
		this.address_id = address_id;
	}
	
}
