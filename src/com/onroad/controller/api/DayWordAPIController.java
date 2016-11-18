package com.onroad.controller.api;

import java.util.HashMap;

import com.jfinal.aop.ClearInterceptor;
import com.jfinal.log.Logger;
import com.onroad.common.bean.Code;
import com.onroad.common.bean.DatumResponse;
import com.onroad.common.utils.DateUtils;
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
		String dateString = DateUtils.getNowTime("yyyy-mm-dd");
		String sql = "SELECT * FROM dayword where DATE_FORMAT(dateTime,'%Y-%m-%d')=?";
		DayWord dayWord = DayWord.dao.findFirst(sql, dateString);
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
	public void getHistoryWord() {
		String dateString = getPara("date");
		String sql = "SELECT * FROM dayword where DATE_FORMAT(dateTime,'%Y-%m-%d')=?";
		DayWord dayWord = DayWord.dao.findFirst(sql, dateString);

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
	 * 插入一条数据 GET /api/dayword/insertWord
	 * 
	 * @param date
	 *            2016-09-05
	 */
	@ClearInterceptor
	public void insertWord() {
		String method = getRequest().getMethod();
		if (!"post".equalsIgnoreCase(method)) { // 修改资料
			render404();
		}
		String dateTime = DateUtils.getNowTime();
		String content = getPara("content");
		String textAuthor = getPara("textAuthor");
		String imageUrl = getPara("imageUrl");
		String imageAuthor = getPara("imageAuthor");

		boolean isSuccess = DayWord.dao.set("dateTime", dateTime)
				.set("content", content).set("textAuthor", textAuthor)
				.set("imageUrl", imageUrl).set("imageAuthor", imageAuthor)
				.save();

		DatumResponse response = new DatumResponse();
		if (isSuccess) {
			response.setCode(Code.SUCCESS).setMessage("保存成功");
		} else {
			response.setCode(Code.FAIL).setMessage("保存失败");
		}
		renderJson(response);
	}
}
