package com.shy.controller;


import com.alibaba.fastjson.JSONArray;
import com.shy.dao.TestDao;
import com.shy.eneity.School_Information;
import com.shy.service.SchoolService;
import com.shy.service.TestService;
import com.shy.tool.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("test")
public class TestController {

    @Autowired
    private TestService testService;

    @Autowired
    private TestDao testDao;

    /**
     *
     * @param page  页数
     * @param province  省市
     * @param type  类型
     * @param model
     * @return  学校列表
     */
    @RequestMapping("search")
    public String getAllSchool(@RequestParam(name = "page",defaultValue = "1",required = false)int page, @RequestParam(name = "province",defaultValue ="")String province, @RequestParam(name = "type",defaultValue ="")String type,@RequestParam(name = "level",defaultValue ="")String level,Model model)
    {

        Page p = new Page();
        List<School_Information> list = testService.getSchoolByParams(province,type,level,(page-1)*p.getPageSize());
        p.setTotalRecord(testService.getSchool(province,type,level,page).size());
        p.setCurrentPage(page);
        model.addAttribute("list",list);
        model.addAttribute("page",p);
        model.addAttribute("province",province);
        model.addAttribute("type",type);
        model.addAttribute("level",level);
        return "test";

    }

    /**
     *
     * @param school_id 学校ID
     * @param model
     * @return  学校主页面
     */
    @RequestMapping("/{school_id}")
    public String school_page(@PathVariable(value = "school_id")Integer school_id,Model model)
    {
        model.addAttribute("school_id",school_id);
        return "School_home_page";
    }

    @RequestMapping("many")
    public String mant()
    {
        List<School_Information> schools = testDao.test();

        return "success";
    }

//    @RequestMapping("schools_compare")
//    public String schools_compare(String schools, Model model)
//    {
//        List<School_Information> schoolbank = testService.compare(schools);
//        String [] school = schools.split(",");
//        System.out.println("学校是");
//        System.out.println(schools);
//        for (int i = 0; i <school.length ; i++) {
//            System.out.println(school[i]);
//        }
//        model.addAttribute("list",schoolbank);
//        ModelAndView modelAndView = new ModelAndView("success");
//        modelAndView.addObject("list",school);
//        return "success";
//    }

    /**
     * form提交对比表单
     * @param schools
     * @return
     */
    @RequestMapping("schools_compare")
    public String schools_compare(@RequestParam(value = "school_hidden")String schools,Model model)
    {
        List<School_Information> schoolbank = testService.compare(schools);
        model.addAttribute("schools",schoolbank);
        return "success";
    }
    @RequestMapping("success")
    public String success()
    {
        return "success";
    }
}
