package com.shy.controller;

import com.alibaba.fastjson.JSONObject;
import com.shy.eneity.User;
import com.shy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class IndexController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String Index(Model model, HttpServletRequest request)
    {
        String name  = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("成功进入controller，用户名"+name+",密码:"+password);

        if (name!=null&&password!=null)
        {

            User user = new User();
            user.setUsername(name);
            user.setPassword(password);
            model.addAttribute(user);
            request.getSession().setAttribute("user",user);
        }
        else if (request.getSession().getAttribute("user")!=null)
        {
            User user = (User) request.getSession().getAttribute("user");
            model.addAttribute(user);
        }
        return "index";
    }

    @RequestMapping("loginTest")
    @ResponseBody
    public int LoginTest(HttpServletRequest request)
    {
        System.out.println("进入loginTest");
        String name  = request.getParameter("username");
        String password = request.getParameter("password");
        int BackCode = userService.loginTest(name,password);
        if (BackCode == 2)
        {
            User user = userService.getUserByName(name);
            request.getSession().setAttribute("user",user);
        }
        System.out.println("backCode为"+BackCode);
//        JSONObject json = new JSONObject();
//        json.put("backCode",BackCode);
//        System.out.println(json);
        return BackCode;
    }
}
