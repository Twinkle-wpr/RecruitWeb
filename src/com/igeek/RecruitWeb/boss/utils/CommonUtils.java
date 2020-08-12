package com.igeek.RecruitWeb.boss.utils;

import java.util.UUID;

/**
 * 通用工具类
 */
public class CommonUtils {
	
	//产生随机字符串
	public static String getUUID() {
		return UUID.randomUUID().toString();
	}
	
}
