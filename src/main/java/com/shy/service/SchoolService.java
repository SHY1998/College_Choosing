package com.shy.service;

import com.shy.eneity.School_Information;

import java.util.List;

public interface SchoolService {
    List<School_Information> getSchool();

    List<School_Information> getSchoolByParams(String province, int page);

    List<School_Information> getSchool(String province, int page);
}
