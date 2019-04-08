package com.zoe.service.impl;

import com.zoe.mapper.RentrequestMapper;
import com.zoe.pojo.Rentrequest;
import com.zoe.service.RentrequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RentrequestServiceImpl implements RentrequestService {
	@Autowired
    RentrequestMapper rentrequestMapper;

	@Override
	public List<Rentrequest> list() {
		return rentrequestMapper.list();
	}

	@Override
	public int add(Rentrequest rentrequest) {
		return rentrequestMapper.add(rentrequest);
	}
}
