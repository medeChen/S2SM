package com.chen.model;

public class Comment {
	private String comment_id;
	private String goods_id;
	private User commentator;
	private String comment_msg;
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public User getCommentator() {
		return commentator;
	}
	public void setCommentator(User commentator) {
		this.commentator = commentator;
	}
	public String getComment_msg() {
		return comment_msg;
	}
	public void setComment_msg(String comment_msg) {
		this.comment_msg = comment_msg;
	}
	
}
