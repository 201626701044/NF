package com.zoe.service;


import com.zoe.pojo.Member;

public interface MemberService {

	public int findMemberByNameAndPwd(String memberName,String memberPassword);

	public int validateMemberName(String memberName);

	public int add(Member member);

	public int findMemberByName(String memberName);
}

