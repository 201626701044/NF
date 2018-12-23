package com.zoe.mapper;
 

import com.zoe.pojo.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MemberMapper {

    List<Member> list();
    List<Member> list1(@Param("memberName")String param1,@Param("memberPassword")String param2);

    public int findMemberByNameAndPwd(@Param("memberName")String param1,@Param("memberPassword")String param2);
    //查询memberName是否存在
    public int validateMemberName(String memberName);

    public int add(Member member);

    public int findMemberByName(String member_name);


    int existMembername(String memberName);

    Member selectByPrimaryKey(int memberId);

    int updateByPrimaryKeySelective(Member record);

    public Member getMemberByName(@Param("memberName")String param1);
}