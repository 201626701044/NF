package com.zoe.service;


import com.zoe.pojo.House;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface HouseService {

	/**
	 * 显示房源信息
	 */
	public List<House> find();
	/**
	 * 通过area查询房源
	 */
	public List<House> queryByArea(String area);
	/**
	 * 添加房源信息
	 */
	public void insert(House house);
}

