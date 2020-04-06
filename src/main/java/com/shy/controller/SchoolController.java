package com.shy.controller;


import com.shy.eneity.School_Information;
import com.shy.service.SchoolService;
import com.shy.tool.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("school")
public class SchoolController {

    @Autowired
    private SchoolService schoolService;

    @RequestMapping("search")
//
    public String getAllSchool(@RequestParam(name = "page",defaultValue = "1",required = false)int page, @RequestParam(name = "province",defaultValue ="")String province, Model model)
    {

        Page p = new Page();
        List<School_Information> list = schoolService.getSchoolByParams(province,(page-1)*p.getPageSize());
        System.out.println("++++++");
        System.out.println(schoolService.getSchool(province,page).size()+"");
        System.out.println("++++++");
        p.setTotalRecord(schoolService.getSchool(province,page).size());
        p.setCurrentPage(page);
        model.addAttribute("list",list);
        model.addAttribute("page",p);
        model.addAttribute("province",province);
        return "schoolList";

    }





}
