package com.shy.service.impl;

import com.shy.dao.TestDao;
import com.shy.eneity.School_Information;
import com.shy.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    @Autowired
    private TestDao testDao;

    public String test()
    {
        return "success";
    }
    @Override
    public List<School_Information> getSchoolById(int id)
    {
        List<School_Information> list = testDao.searchById(id);
        return list;
    }

    @Override
    public List<School_Information> getSchooByPage(int start,int pageSize,String province)
    {
        List<School_Information> lists = testDao.getAccountByPage(start,pageSize,province);
        return lists;
    }

    @Override
    public List<School_Information> getSchool()
    {
        List<School_Information> list = testDao.getSchool();
        return list;
    }

    @Override
    public List<School_Information> getSchoolByProvince(String province)
    {
        List<School_Information> list = testDao.getSchoolByProvince(province);
        return list;
    }




}
