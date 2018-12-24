package com.zoe.mapper;
 

import com.zoe.pojo.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MemberMapper {

    /**
     * 检查memberName是否存在
     * 返回int型，当返回值大于0，说明用户已存在
     * @param member_name
     * @return
     */
    public int findMemberByName(String member_name);
    //注册添加用户
    public int add(Member member);

    public int findMemberByNameAndPwd(@Param("memberName")String param1,@Param("memberPassword")String param2);
    //查询memberName是否存在
    public int validateMemberName(String memberName);

    List<Member> list();
    List<Member> list1(@Param("memberName")String param1,@Param("memberPassword")String param2);

    int existMembername(String memberName);

    Member selectByPrimaryKey(int memberId);

    int updateByPrimaryKeySelective(Member record);

    public Member getMemberByName(@Param("memberName")String param1);
}