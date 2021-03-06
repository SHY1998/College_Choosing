package com.shy.service;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestService {
    List<School_Information> getSchool();

    List<School_Information> getSchoolByParams(String province,String type,String level,int page);

    List<School_Information> getSchool(String province,String type,String level,int page);

    List<School_Information> compare(String schoolbank);
}
