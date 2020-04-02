package com.shy.controller;

import com.shy.eneity.School_Information;
import com.shy.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/test")
public class TestController {

    @Autowired
    private TestService testService;

    @RequestMapping("/success")
    public String test()
    {
        return "success";
    }


    @RequestMapping("/ServiceTest")
    public String ServiceTest()
    {
        return testService.test();
    }


    @RequestMapping("id")
    public String getSchoolById(Integer id, Model model)
    {
        List<School_Information> list = testService.getSchoolById(id);
        model.addAttribute("list",list);
        return "school";
    }



}
