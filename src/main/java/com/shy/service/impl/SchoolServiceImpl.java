package com.shy.service.impl;


import com.shy.dao.SchoolDao;
import com.shy.eneity.School_Information;
import com.shy.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolServiceImpl implements SchoolService {

    @Autowired
    private SchoolDao schoolDao;

    @Override
    public List<School_Information> getSchool()
    {
        List<School_Information> list = schoolDao.getSchool();
        return list;
    }

    @Override
    public List<School_Information> getSchoolByParams(String province,String type,int page)
    {
        List<School_Information> list = schoolDao.getSchoolByParams(province,type,page);
        return list;
    }

    @Override
    public List<School_Information> getSchool(String province,String type, int page)
    {
        List<School_Information> list = schoolDao.getSchool(province,type,page);
//                List<School_Information> list = schoolDao.getSchool();

        return list;
    }
}
