package com.onroad.blog;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.common.model.Blog;

/**
 * BlogController
 * ���� sql ��ҵ���߼�д�� Model �� Service �У���Ҫд�� Controller �У����ɺ�ϰ�ߣ������ڴ�����Ŀ�Ŀ�����ά��
 */
@Before(BlogInterceptor.class)
public class BlogController extends Controller {
	public void index() {
		setAttr("blogPage", Blog.me.paginate(getParaToInt(0, 1), 10));
		render("blog.html");
	}
	
	public void add() {
	}
	
	@Before(BlogValidator.class)
	public void save() {
		getModel(Blog.class).save();
		redirect("/blog");
	}
	
	public void edit() {
		setAttr("blog", Blog.me.findById(getParaToInt()));
	}
	
	@Before(BlogValidator.class)
	public void update() {
		getModel(Blog.class).update();
		redirect("/blog");
	}
	
	public void delete() {
		Blog.me.deleteById(getParaToInt());
		redirect("/blog");
	}
}


