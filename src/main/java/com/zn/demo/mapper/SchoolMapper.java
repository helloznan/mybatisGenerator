package com.zn.demo.mapper;

import com.zn.demo.model.School;
import java.util.List;

public interface SchoolMapper {
    int insert(School record);

    List<School> selectAll();
}