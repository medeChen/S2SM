package com.chen.model;

public class Check {
	String check_id;
	String user_id;
	String check_pic1;
	String check_pic2;
	String check_msg;
	String handler_id;
	int check_state;
	
	public Check() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCheck_id() {
		return check_id;
	}
	public void setCheck_id(String check_id) {
		this.check_id = check_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCheck_pic1() {
		return check_pic1;
	}
	public void setCheck_pic1(String check_pic1) {
		this.check_pic1 = check_pic1;
	}
	public String getCheck_pic2() {
		return check_pic2;
	}
	public void setCheck_pic2(String check_pic2) {
		this.check_pic2 = check_pic2;
	}
	public String getCheck_msg() {
		return check_msg;
	}
	public void setCheck_msg(String check_msg) {
		this.check_msg = check_msg;
	}
	public String getHandler_id() {
		return handler_id;
	}
	public void setHandler_id(String handler_id) {
		this.handler_id = handler_id;
	}
	public int getCheck_state() {
		return check_state;
	}
	public void setCheck_state(int check_state) {
		this.check_state = check_state;
	}
	public Check(String check_id, String user_id, String check_pic1, String check_pic2, String check_msg,
			String handler_id, int check_state) {
		super();
		this.check_id = check_id;
		this.user_id = user_id;
		this.check_pic1 = check_pic1;
		this.check_pic2 = check_pic2;
		this.check_msg = check_msg;
		this.handler_id = handler_id;
		this.check_state = check_state;
	}
	public boolean state() {
		if(check_state==0) {
			return false;
		}
		return true;
	}
	public boolean isnull() {
		if(check_id==null) {
			return true;
		}
		return false;
	}
	@Override
	public String toString() {
		return "Check [check_id=" + check_id + ", user_id=" + user_id + ", check_pic1=" + check_pic1 + ", check_pic2="
				+ check_pic2 + ", check_msg=" + check_msg + ", handler_id=" + handler_id + ", check_state="
				+ check_state + "]";
	}
	
}
