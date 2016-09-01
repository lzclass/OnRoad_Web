package com.onroad.controller.api;

import com.jfinal.aop.ClearInterceptor;
import com.jfinal.log.Logger;
import com.onroad.common.bean.BaseResponse;
import com.onroad.common.bean.Code;
import com.onroad.common.utils.DateUtils;
import com.onroad.model.DayWord;

/**
 * @description 每日一言
 * @author liuzhao
 * @date 2016年9月1日下午5:00:15
 */
public class DailyWordAPIController extends BaseAPIController {
	private static Logger log = Logger.getLogger(DailyWordAPIController.class);

	/**
	 * 返回首页每日一条数据
	 */
	@ClearInterceptor
	public void dayWord() {
		String daytime = DateUtils.getNowTime();
		// 检查手机号码是否被注册
		DayWord dayWord = DayWord.dao.get(daytime);
		boolean flag = dayWord != null ? true : false;
		renderJson(new BaseResponse(flag ? Code.SUCCESS : Code.FAIL,
				flag ? "查询成功" : "查询失败"));
	}
}
