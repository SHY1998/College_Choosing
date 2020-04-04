package com.shy.dao;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestDao {
    List<School_Information> searchById(Integer id);

    List<School_Information> getSchool();

    List<School_Information> getAccountByPage(int start, int perPageUsers,String province);

    List<School_Information> getSchoolByProvince(String province);
}
