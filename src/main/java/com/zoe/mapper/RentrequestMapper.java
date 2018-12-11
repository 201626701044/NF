package com.zoe.mapper;
 

import com.zoe.pojo.Rentrequest;

import java.util.List;


public interface RentrequestMapper {

    List<Rentrequest> list();
    List<Rentrequest> listAndRequest(int houseID);

}