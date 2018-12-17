package com.zoe.service;


import com.zoe.pojo.House;

import java.util.List;

public interface HouseService {

	List<House> list();
	List<House> listAndRequest();
	public List<House> findArea(String area);

}

