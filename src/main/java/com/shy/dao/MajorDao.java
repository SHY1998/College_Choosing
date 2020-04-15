package com.shy.dao;

import com.shy.eneity.Special_Level4;

import java.util.List;

public interface MajorDao {

    List<Special_Level4> getAll(String ben, String type);

    List<Special_Level4> getMajorByParam(int page, String ben, String type);
}
