package com.onroad.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class AuthInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation invocation) {
		Controller controller = invocation.getController();
		Boolean loginUser = controller.getSessionAttr("flag");
		if (loginUser == true)
			invocation.invoke();
		else
			controller.redirect("/");
	}

}
