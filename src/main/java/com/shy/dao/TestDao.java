package com.shy.dao;

import com.shy.eneity.School_Information;

import java.util.List;

public interface TestDao {
    List<School_Information> searchById(Integer id);
}
