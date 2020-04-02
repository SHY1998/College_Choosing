package com.shy.service;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestService {
    public String test();

    List<School_Information> getSchoolById(int id);
}
