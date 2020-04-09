package com.shy.dao;

import com.shy.eneity.School_Information;

import java.util.List;

public interface SchoolDao {
    List<School_Information> getSchool();

//    List<School_Information> getAccountByPage(int start, int perPageUsers, String province);

//    List<School_Information> getSchoolByProvince(String province);

//    List<School_Information> getAccountByPage(int start, String province);

    List<School_Information> getSchoolByParams(String province, String type,String level,int start);

    List<School_Information> getSchool(String province,String type,String level, int start);
}
