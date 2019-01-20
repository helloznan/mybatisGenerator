package com.zn.demo.mapper;

import com.zn.demo.model.Privilege;
import java.util.List;

public interface PrivilegeMapper {
    int insert(Privilege record);

    List<Privilege> selectAll();
}