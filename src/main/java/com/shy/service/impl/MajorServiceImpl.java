package com.shy.service.impl;

import com.shy.dao.MajorDao;
import com.shy.eneity.Special_Level4;
import com.shy.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MajorServiceImpl implements MajorService {

    @Autowired
    private MajorDao majorDao;

    @Override
    public List<Special_Level4> getAll(String ben,String type)
    {
        List<Special_Level4> majors= majorDao.getAll(ben,type);
        return majors;
    }

    @Override
    public List<Special_Level4> getMajorByParam(int page,String ben ,String type)
    {
        List<Special_Level4> majors = majorDao.getMajorByParam(page,ben,type);
        return majors;
    }
}
