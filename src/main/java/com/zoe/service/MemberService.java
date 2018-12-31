package com.zoe.service;


import com.zoe.pojo.Member;

import java.util.List;

public interface MemberService {

	/**
	 * 通过id查询用户
	 */
	Member selectByPrimaryKey(int member_ID);

	/**
	 * 添加用户信息
	 */
	public void insert(Member member);

	/**
	 * 修改用户信息
	 */
	public void update(Member member);

	/**
	 * 删除用户信息
	 */
	void delete(int member_ID);

	/**
	 * 检查memberName是否存在
	 * 返回int型，当返回值大于0，说明用户已存在
	 * @param member_name
	 * @return
	 */
	public int findMemberByName(String member_name);

	//注册添加用户
	public int add(Member member);

	public int findMemberByNameAndPwd(String memberName,String memberPassword);

	//用户名验证
	public int validateMemberName(String memberName);

	/**
	 * 显示用户信息
	 */
	List<Member> list();

	List<Member> list1(String memberName,String memberPassword);

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

