package com.chen.model;

import java.io.Serializable;

/**
 * private String user_name; private String user_pwd; private String user_id;
 * private String user_pno; private String user_mail; private int userv_point;
 * private int user_bla;//余额 private String user_head; private int user_state;
 * 
 * @author Sean
 *
 */
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	private String user_name;
	private String user_pwd;
	private String user_id;
	private String user_pno;
	private String user_mail;
	private int user_vpoint;
	private int user_bla;// 余额
	private String user_head;
	private int user_state;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd)  {
		this.user_pwd = user_pwd;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pno() {
		return user_pno;
	}

	public int getUser_vpoint() {
		return user_vpoint;
	}

	public void setUser_vpoint(int user_vpoint) {
		this.user_vpoint = user_vpoint;
	}

	public void setUser_pno(String user_pno) {
		this.user_pno = user_pno;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}

	public int getUser_bla() {
		return user_bla;
	}

	public void setUser_bla(int user_bla) {
		this.user_bla = user_bla;
	}

	public String getUser_head() {
		return user_head;
	}

	public void setUser_head(String user_head) {
		this.user_head = user_head;
	}

	public int getUser_state() {
		return user_state;
	}

	public void setUser_state(int user_state) {
		this.user_state = user_state;
	}
	public boolean isempty() {
		return this.user_mail==null;
	}
	public boolean mailnull() {
		return this.user_mail==null;
	}
	public boolean pnonull() {
		return this.user_pno==null;
	}
	@Override
	public String toString() {
		return "User [user_name=" + user_name + ", user_pwd=" + user_pwd + ", user_id=" + user_id + ", user_pno="
				+ user_pno + ", user_mail=" + user_mail + ", user_vpoint=" + user_vpoint + ", user_bla=" + user_bla
				+ ", user_head=" + user_head + ", user_state=" + user_state + "]";
	}

}
