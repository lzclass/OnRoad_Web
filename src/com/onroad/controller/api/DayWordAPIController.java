package com.onroad.controller.api;

import java.util.HashMap;

import com.jfinal.aop.ClearInterceptor;
import com.jfinal.log.Logger;
import com.onroad.common.bean.Code;
import com.onroad.common.bean.DatumResponse;
import com.onroad.model.DayWord;

/**
 * @description 每日一言 返回首页今日一条数据 GET /api/dayword/getTodayWord 返回历史的一条数据 GET
 *              /api/dayword/getHistoryWord
 * @author liuzhao
 * @date 2016年9月1日下午5:00:15
 */
public class DayWordAPIController extends BaseAPIController {
	private static Logger log = Logger.getLogger(DayWordAPIController.class);

	/**
	 * 返回首页今日一条数据 GET /api/dayword/getTodayWord
	 */
	@ClearInterceptor
	public void getTodayWord() {
		String sql = "SELECT * FROM dayword";
		DayWord dayWord = DayWord.dao.findFirst(sql);
		DatumResponse response = new DatumResponse();
		if (dayWord == null) {
			response.setCode(Code.FAIL).setMessage("查询失败");
		} else {
			HashMap<String, Object> map = new HashMap<String, Object>(
					dayWord.getAttrs());
			response.setDatum(map);
			response.setCode(Code.SUCCESS).setMessage("查询成功");
		}
		renderJson(response);
	}

	/**
	 * 返回历史的一条数据 GET /api/dayword/getHistoryWord
	 * 
	 * @param date
	 *            2016-09-02
	 */
	@ClearInterceptor
	public void getHistoryWord(String date) {
		// 检查手机号码是否被注册
		DayWord dayWord = DayWord.dao
				.findFirst("SELECT*FROM dayword WHERE dateTime like '" + date
						+ "%';");

		DatumResponse response = new DatumResponse();
		if (dayWord == null) {
			response.setCode(Code.FAIL).setMessage("查询失败");
		} else {
			HashMap<String, Object> map = new HashMap<String, Object>(
					dayWord.getAttrs());
			response.setDatum(map);
			response.setCode(Code.SUCCESS).setMessage("查询成功");
		}
		renderJson(response);
	}
}
