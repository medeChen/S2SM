package com.chen.model;

public class Complain {
	private String complain_id;
	private User complain_from;
	private User complain_to;
	private String handler_id;
	private String complain_msg;
	private String complain_rusult;

	public Complain() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getComplain_id() {
		return complain_id;
	}

	public void setComplain_id(String complain_id) {
		this.complain_id = complain_id;
	}

	public User getComplain_from() {
		return complain_from;
	}

	public void setComplain_from(User complain_from) {
		this.complain_from = complain_from;
	}

	public User getComplain_to() {
		return complain_to;
	}

	public void setComplain_to(User complain_to) {
		this.complain_to = complain_to;
	}

	public String getHandler_id() {
		return handler_id;
	}

	public void setHandler_id(String handler_id) {
		this.handler_id = handler_id;
	}

	public String getComplain_msg() {
		return complain_msg;
	}

	public void setComplain_msg(String complain_msg) {
		this.complain_msg = complain_msg;
	}

	public String getComplain_rusult() {
		return complain_rusult;
	}

	public void setComplain_rusult(String complain_rusult) {
		this.complain_rusult = complain_rusult;
	}

}
