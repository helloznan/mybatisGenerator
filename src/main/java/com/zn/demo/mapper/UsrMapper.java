package com.zn.demo.mapper;

import com.zn.demo.model.Usr;
import java.util.List;

public interface UsrMapper {
    int insert(Usr record);

    List<Usr> selectAll();
}