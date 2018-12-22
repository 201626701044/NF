package com.zoe.service;


import com.zoe.pojo.Member;

import java.util.List;

public interface MemberService {

	List<Member> list();

	List<Member> list1(String memberName,String memberPassword);

	public int findMemberByNameAndPwd(String memberName,String memberPassword);

	public int validateMemberName(String memberName);

	public int add(Member member);

	public int findMemberByName(String memberName);
	/**
	 * 检查memberName是否存在
	 * @param memberName
	 * @return
	 */
	public boolean existMembername(String memberName);

	/**
	 * 获取用户信息
	 * @param memberId
	 * @return
	 */
	public Member getMemberById(int memberId);

	public boolean updateMember(Member member);

	public Member getMemberByName(String memberName);
}

