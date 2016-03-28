package com.onroad.validator;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;
import com.onroad.common.model.Quotation;

/**
 * @author liuzhao ��¼
 *
 */
public class QuotationsValidator extends Validator {

	protected void validate(Controller controller) {
		validateRequiredString("quotation.title", "titleMsg", "��������¼����!");
		validateRequiredString("quotation.content", "contentMsg", "��������¼����!");
		validateRequiredString("quotation.author", "��¼����", "��������¼����!");
	}

	protected void handleError(Controller controller) {
		controller.keepModel(Quotation.class);

		String actionKey = getActionKey();
		if (actionKey.equals("/quotation/save"))
			controller.render("add.html");
		else if (actionKey.equals("/quotation/update"))
			controller.render("edit.html");
	}

}
