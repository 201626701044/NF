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

	@Override
	public List<House> list() {
		return houseMapper.list();
	}
}
