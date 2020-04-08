package com.shy.service;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestService {
    List<School_Information> getSchool();

    List<School_Information> getSchoolByParams(String province,String type, int page);

    List<School_Information> getSchool(String province,String type, int page);
}
