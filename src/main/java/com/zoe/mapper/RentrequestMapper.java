package com.zoe.mapper;
 

import com.zoe.pojo.Rentrequest;

import java.util.List;


public interface RentrequestMapper {

    public List<Rentrequest> list();
    //根据房源ID得到对应的多个请求
    List<Rentrequest> listAndRequest(int houseID);

    public int add(Rentrequest rentrequest);
}