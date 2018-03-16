package com.chen.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import com.chen.model.User;

import net.sf.json.JSONObject;
import sun.misc.BASE64Encoder;

public class Test {
	public static void main(String [] args) throws UnsupportedEncodingException, NoSuchAlgorithmException{
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		BASE64Encoder base64en = new BASE64Encoder();
		String set = base64en.encode(md5.digest("ass".getBytes("utf-8")));
		System.out.println(set.substring(0, 20));
	}

}
