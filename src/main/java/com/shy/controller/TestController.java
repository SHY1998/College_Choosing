package com.shy.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shy.eneity.School_Information;
import com.shy.service.TestService;
import com.shy.tool.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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

    @RequestMapping("page")
    public String getSchoolByPage(@RequestParam(name = "page",required = false,defaultValue = "1")Integer page,@RequestParam(name = "Province",required = false)String province, Model model)
    {
        Page p = new Page();
        List<School_Information> list = testService.getSchooByPage((page-1)*p.getPageSize(),p.getPageSize(),province);
        p.setTotalRecord(list.size());
        p.setCurrentPage(page);
        model.addAttribute("list",list);
        model.addAttribute("page",p);
        return "schoolList";
    }

    @RequestMapping("/list")
    @ResponseBody
    public Map<String,Object> School_json(Integer page, String province) throws IOException {

        Page p =new Page();
        List<School_Information> list = new ArrayList<School_Information>();
        Map<String,Object> context = new HashMap<>();
        list = testService.getSchooByPage((page-1)*p.getPageSize(),p.getPageSize(),province);
//        list  = testService.getSchoolById(56);
        p.setTotalRecord(list.size());
        p.setCurrentPage(page);
        context.put("schoolList",list);
        context.put("status",true);
        return context;
    }



}

