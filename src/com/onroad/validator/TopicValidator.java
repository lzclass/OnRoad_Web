package com.onroad.validator;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * Created with IntelliJ IDEA.
 * Author: StevenChow
 * Date: 13-5-9
 */
public class TopicValidator extends Validator {
    @Override
    protected void validate(Controller c) {
        validateString("topic.content", 1, 50, "contentMsg", "标题不能为空且长度不超过50");
    }

    @Override
    protected void handleError(Controller c) {
        c.renderError(500);
    }
}
