package com.onroad.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.common.model.Quotation;
import com.onroad.interceptor.QuotationInterceptor;
import com.onroad.validator.QuotationsValidator;

/**
 * QuotationController 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller
 * 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(QuotationInterceptor.class)
public class QuotationController extends Controller {
	public void index() {
		setAttr("quotationPage", Quotation.me.paginate(getParaToInt(0, 1), 10));
		render("quotation.jsp");
	}

	public void add() {
	}

	@Before(QuotationsValidator.class)
	public void save() {
		getModel(Quotation.class).save();
		redirect("/quotation");

		Quotation quotation = this.getModel(Quotation.class);
		quotation.set("id", "test_seq_quotation.nextval");
		quotation.save();
		forwardAction("/quotation");
	}

	/**
	 * 编辑
	 */
	public void edit() {
		Quotation quotation = Quotation.me.findById(getParaToInt());
		setAttr("quotation", quotation.put("quotation_title", "修改"));
	}

	/**
	 * 查看
	 */
	public void view() {
		Quotation quotation = Quotation.me.findById(getParaToInt());
		setAttr("quotation", quotation.put("quotation_title", "查看"));
	}

	@Before(QuotationsValidator.class)
	public void update() {
		getModel(Quotation.class).update();
		// redirect("/quotation");
		forwardAction("/quotation");
	}

	public void delete() {
		Quotation.me.deleteById(getParaToInt());
		// redirect("/quotation");
		forwardAction("/quotation");
	}
}
