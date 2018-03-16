package com.chen.model;

public class Shop {
	private String shop_id;
	private String shop_name;
	private String shop_owner;
	private String shop_log;
	private int shop_state;
	public Shop() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_owner() {
		return shop_owner;
	}
	public void setShop_owner(String shop_owner) {
		this.shop_owner = shop_owner;
	}
	public String getShop_log() {
		return shop_log;
	}
	public void setShop_log(String shop_log) {
		this.shop_log = shop_log;
	}
	public int getShop_state() {
		return shop_state;
	}
	public void setShop_state(int shop_state) {
		this.shop_state = shop_state;
	}
	public Shop(String shop_log) {
		super();
		this.shop_log = shop_log;
	}
	@Override
	public String toString() {
		return "Shop [shop_id=" + shop_id + ", shop_name=" + shop_name + ", shop_owner=" + shop_owner + ", shop_log="
				+ shop_log + ", shop_state=" + shop_state + "]";
	}
	
}
