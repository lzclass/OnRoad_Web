package com.onroad.blog;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;
import com.onroad.common.model.Blog;

/**
 * BlogValidator.
 */
public class BlogValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("blog.title", "titleMsg", "������Blog����!");
		validateRequiredString("blog.content", "contentMsg", "������Blog����!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(Blog.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/blog/save"))
			controller.render("add.html");
		else if (actionKey.equals("/blog/update"))
			controller.render("edit.html");
	}
}
