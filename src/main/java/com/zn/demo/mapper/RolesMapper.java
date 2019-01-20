package com.zn.demo.mapper;

import com.zn.demo.model.Roles;
import java.util.List;

public interface RolesMapper {
    int insert(Roles record);

    List<Roles> selectAll();
}