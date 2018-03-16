package com.chen.utils;

import java.util.UUID;

/**
 * 获取UUID
 * @author chen
 *
 * 2017年9月19日
 */
public class GetUUID {
	public static String getUUID(){
		String uuid=UUID.randomUUID().toString();
		uuid=uuid.replace("-","").substring(3, 13);
		return uuid;
	}
}
