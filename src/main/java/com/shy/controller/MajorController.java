package com.shy.controller;


import com.shy.eneity.Special_Level4;
import com.shy.service.MajorService;
import com.shy.tool.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/major")
public class MajorController {

    @Autowired
    private MajorService majorService;

    @RequestMapping("")
    public String GetAllschool(Model model, @RequestParam(name = "page",defaultValue = "1",required = false)int page,@RequestParam(name = "ben",defaultValue = "",required = false)String ben,@RequestParam(name = "type",defaultValue = "",required = false)String type)
    {
        System.out.println("controller执行");
        Page p = new Page();
        List<Special_Level4> list = majorService.getMajorByParam((page-1)*p.getPageSize(),ben,type);
        if (list!=null&&list.size()>0)
        {
            p.setTotalRecord(majorService.getAll(ben,type).size());
            p.setCurrentPage(page);
        }
        System.out.println("controller"+list.size());
        model.addAttribute("list",list);
        model.addAttribute("page",p);
        model.addAttribute("ben",ben);
        model.addAttribute("type",type);
        return "major";
    }




}
