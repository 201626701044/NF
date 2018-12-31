package com.zoe.service;


import com.zoe.pojo.Member;
import com.zoe.pojo.Rentrequest;

import java.util.List;

public interface RentrequestService {

	public List<Rentrequest> list();

	//发布添加用户
	public int add(Rentrequest rentrequest);
}

