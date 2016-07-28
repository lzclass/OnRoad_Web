package com.onroad.controller.admin;

import java.util.HashMap;
import java.util.Map;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.onroad.interceptor.AdminInterceptor;
import com.onroad.model.Module;

/**
 * Created with IntelliJ IDEA.
 * Author: iver
 * Date: 13-3-29
 */
@Before(AdminInterceptor.class)
public class ModuleController extends Controller {

    public void index(){
        Module.dao.removeCache();
        setAttr("moduleList", Module.dao.getList());
        render("/admin/module.html");
    }

    public void save(){
        getModel(Module.class).save();
        index();
    }

    public void edit(){
        setAttr("module", Module.dao.findById(getParaToInt()));
        index();
    }

    public void update(){
        getModel(Module.class).update();
        index();
    }

    public void delete(){
        Module.dao.deleteById(getParaToInt());
        index();
    }

}
