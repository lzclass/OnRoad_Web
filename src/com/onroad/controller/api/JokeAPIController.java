package com.onroad.controller.api;

import com.jfinal.aop.Before;
import com.jfinal.aop.ClearInterceptor;
import com.jfinal.log.Logger;
import com.onroad.interceptor.TokenInterceptor;

/**
 * @description 笑话API
 * @author liuzhao
 * @date 2016年8月29日下午3:03:32
 */
@Before(TokenInterceptor.class)
public class JokeAPIController extends BaseAPIController {
	private static Logger log = Logger.getLogger(JokeAPIController.class);

	/**
	 * 返回笑话列表
	 */
	@ClearInterceptor
	public void JokeList() {
		
	}
}
