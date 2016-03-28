package com.onroad.validator;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;
import com.onroad.common.model.Quotation;

/**
 * @author liuzhao 语录
 *
 */
public class QuotationsValidator extends Validator {

	protected void validate(Controller controller) {
		validateRequiredString("quotation.title", "titleMsg", "请输入语录标题!");
		validateRequiredString("quotation.content", "contentMsg", "请输入语录内容!");
		validateRequiredString("quotation.author", "语录作者", "请输入语录作者!");
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
