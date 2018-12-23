package com.zoe.mapper;
 

import com.zoe.pojo.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface HouseMapper {

    List<House> list();
    public  List<House> findArea(String area);

//    public int findMemberByNameAndPwd(@Param("memberName")String param1,@Param("memberPassword")String param2);

//    public  List<House> listHouse(String area,String rentNum,int rentPrice1,int rentPrice2,
//                                  String checkInDate,String sex,String way);

    public  List<House> listHouse(@Param("area")String param1,@Param("rentNum")String param2 ,
                                  @Param("rentPrice1")int param3,@Param("rentPrice2")int param4,
                                  @Param("checkInDate")String param5,@Param("sex")String param6,@Param("way")String param7);

    public List<House> insert(int rentPrice);


    public int add(House house);
}