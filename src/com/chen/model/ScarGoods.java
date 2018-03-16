package com.chen.model;

public class ScarGoods {
	private String goods_id;
	private String goods_name;
	private String shop_id;
	private int goods_price;
	private String goods_desc;
	private int goods_margin;
	private String goods_picture;
	private int goods_state;
	private int num;
	private int point;
	public ScarGoods() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public void init(Goods a) {
		this.goods_id = a.getGoods_id();
		this.goods_name = a.getGoods_name();
		this.shop_id = a.getShop_id();
		this.goods_price = a.getGoods_price();
		this.goods_desc = a.getGoods_desc();
		this.goods_margin = a.getGoods_margin();
		this.goods_picture = a.getGoods_picture();
		this.goods_state = a.getGoods_state();
	}

	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getShop_id() {
		return shop_id;
	}
	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_desc() {
		return goods_desc;
	}
	public void setGoods_desc(String goods_desc) {
		this.goods_desc = goods_desc;
	}
	public int getGoods_margin() {
		return goods_margin;
	}
	public void setGoods_margin(int goods_margin) {
		this.goods_margin = goods_margin;
	}
	public String getGoods_picture() {
		return goods_picture;
	}
	public void setGoods_picture(String goods_picture) {
		this.goods_picture = goods_picture;
	}
	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", shop_id=" + shop_id + ", goods_price="
				+ goods_price + ", goods_desc=" + goods_desc + ", goods_margin=" + goods_margin + ", goods_picture="
				+ goods_picture + "]";
	}
	public int getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(int goods_state) {
		this.goods_state = goods_state;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point =(int) point/3;
	}
	
}
