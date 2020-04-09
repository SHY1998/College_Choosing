package com.shy.service.impl;


import com.shy.dao.SchoolDao;
import com.shy.dao.TestDao;
import com.shy.eneity.School_Information;
import com.shy.service.SchoolService;
import com.shy.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestDao testDao;

    @Override
    public List<School_Information> getSchool()
    {
        List<School_Information> list = testDao.getSchool();
        return list;
    }

    @Override
    public List<School_Information> getSchoolByParams(String province,String type,int page)
    {
        List<School_Information> list = testDao.getSchoolByParams(province,type,page);
        return list;
    }

    @Override
    public List<School_Information> getSchool(String province,String type, int page)
    {
        List<School_Information> list = testDao.getSchool(province,type,page);
//                List<School_Information> list = schoolDao.getSchool();

        return list;
    }

    @Override
    public List<School_Information> compare(String schoolbank)
    {
        System.out.println("service传递的位");
        System.out.println(schoolbank);
//        String [] school = schoolbank.split(",");
//        System.out.println(school.getClass());
        List<School_Information> list = testDao.compare(schoolbank);
        return list;
    }
}
