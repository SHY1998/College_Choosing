package com.shy.controller;


import com.shy.eneity.School_Information;
import com.shy.service.SchoolService;
import com.shy.tool.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("school")
public class SchoolController {

    @Autowired
    private SchoolService schoolService;

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
        System.out.println("level++++++++++"+level);
        List<School_Information> list = schoolService.getSchoolByParams(province,type,level,(page-1)*p.getPageSize());
        p.setTotalRecord(schoolService.getSchool(province,type,level,page).size());
        p.setCurrentPage(page);
        model.addAttribute("list",list);
        model.addAttribute("page",p);
        model.addAttribute("province",province);
        model.addAttribute("type",type);
        model.addAttribute("level",level);
        return "schoolList";

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
}
