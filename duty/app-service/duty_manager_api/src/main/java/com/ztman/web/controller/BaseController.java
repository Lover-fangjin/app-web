package com.ztman.web.controller;

import com.ztman.model.entity.UserAssist;
import org.springframework.web.bind.annotation.ModelAttribute;

/**
 * Created by Administrator on 2020/4/20.
 */
public class BaseController {

    protected UserAssist loginUser;

    public UserAssist getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(UserAssist loginUser) {
        this.loginUser = loginUser;
    }

    @ModelAttribute
    public void initLoginUser(){
        // TODO 初始化用户
    }


}
