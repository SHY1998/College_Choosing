package com.shy.service;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestService {
    public String test();

    List<School_Information> getSchoolById(int id);

    List<School_Information> getSchooByPage(int start, int pageSize, String province);

    List<School_Information> getSchool();

    List<School_Information> getSchoolByProvince(String province);
}
