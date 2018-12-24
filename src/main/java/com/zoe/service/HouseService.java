package com.zoe.service;


import com.zoe.pojo.House;

import java.util.List;

public interface HouseService {

	//列出所有房源
	public List<House> list();

	//按条件查询房源
	public  List<House> listHouse(String area,String rentNum,int rentPrice1,int rentPrice2,
								  String checkInDate,String sex,String way);

	List<House> listAndRequest();
	public List<House> findArea(String area);

	public List<House> insert(int rentPrice);

    public int add(House house);
}

