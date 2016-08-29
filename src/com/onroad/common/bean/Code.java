package com.onroad.common.bean;

/**
 * @description
 * @author liuzhao
 * @date 2016年7月28日下午3:59:48
 */
public class Code {
	/**
	 * 失败
	 */
	public static final int FAIL = 0;
	/**
	 * 成功
	 */
	public static final int SUCCESS = 1;
	/**
	 * 参数错误: 一般是缺少或参数值不符合要求
	 */
	public static final int ARGUMENT_ERROR = 2;
	/**
	 * 帐号已存在*
	 */
	public static final int ACCOUNT_EXISTS = 3;

	/**
	 * 验证码错误
	 */
	public static final int CODE_ERROR = 4;

	/**
	 * 服务器错误
	 */
	public static final int ERROR = 500;

	/**
	 * 接口不存在
	 */
	public static final int NOT_FOUND = 404;

	/**
	 * token无效
	 */
	public static final int TOKEN_INVALID = 422;

}
