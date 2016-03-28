package com.onroad.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.common.model.Quotation;
import com.onroad.interceptor.QuotationInterceptor;
import com.onroad.validator.QuotationsValidator;

/**
 * QuotationController ���� sql ��ҵ���߼�д�� Model �� Service �У���Ҫд�� Controller
 * �У����ɺ�ϰ�ߣ������ڴ�����Ŀ�Ŀ�����ά��
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
	 * �༭
	 */
	public void edit() {
		Quotation quotation = Quotation.me.findById(getParaToInt());
		setAttr("quotation", quotation.put("quotation_title", "�޸�"));
	}

	/**
	 * �鿴
	 */
	public void view() {
		Quotation quotation = Quotation.me.findById(getParaToInt());
		setAttr("quotation", quotation.put("quotation_title", "�鿴"));
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
