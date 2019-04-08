package com.zoe.service.impl;

import com.zoe.mapper.HouseMapper;
import com.zoe.pojo.House;
import com.zoe.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class HouseServiceImpl implements HouseService {
	@Autowired
	HouseMapper houseMapper;

	@Override
	public List<House> find() {
		return houseMapper.find();
	}

	@Override
	public List<House> queryByArea(String area) {
		return houseMapper.queryByArea(area);
	}

	@Override
	public void insert(House house) {
		houseMapper.insert(house);
	}


}
