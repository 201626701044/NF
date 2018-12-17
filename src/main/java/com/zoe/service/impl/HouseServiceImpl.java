package com.zoe.service.impl;

import com.zoe.mapper.HouseMapper;
import com.zoe.mapper.RentrequestMapper;
import com.zoe.pojo.House;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.HouseService;
import com.zoe.service.RentrequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	HouseMapper houseMapper;
	@Autowired
	RentrequestMapper  rentrequestMapper;

	@Override
	public List<House> list() {
		return houseMapper.list();
	}

	@Override
	public List<House> listAndRequest() {
		List<House> houses=houseMapper.list();
		for(House house:houses)
		{
			house.setRentrequests(rentrequestMapper.listAndRequest(house.getHouseID()));
		}
		return houses;
	}

	@Override
	public List<House> findArea(String area) {

		List<House> houses=houseMapper.findArea(area);
		for(House house:houses)
		{
			house.setRentrequests(rentrequestMapper.listAndRequest(house.getHouseID()));
		}
		return houses;
	}

}
