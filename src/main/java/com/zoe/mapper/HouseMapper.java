package com.zoe.mapper;
 

import com.zoe.pojo.House;

import java.util.List;


public interface HouseMapper {

    List<House> list();
    public  List<House> findArea(String area);
}