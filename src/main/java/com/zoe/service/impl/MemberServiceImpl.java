package com.zoe.service.impl;

import com.zoe.mapper.MemberMapper;
import com.zoe.pojo.Member;
import com.zoe.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberMapper memberMapper;

	@Override
	public List<Member> list() {
		return memberMapper.list();
	}

	@Override
	public List<Member> list1(String memberName, String memberPassword) {
		return memberMapper.list1(memberName,memberPassword);
	}

	@Override
	public int findMemberByNameAndPwd(String memberName, String memberPassword) {
		return memberMapper.findMemberByNameAndPwd(memberName,memberPassword);
	}

	@Override
	public int validateMemberName(String memberName) {
		return memberMapper.validateMemberName(memberName);
	}

	@Override
	public int add(Member member) {
		return memberMapper.add(member);
	}

	@Override
	public int findMemberByName(String member_name) {
		return memberMapper.findMemberByName(member_name);
	}

	@Override
	public boolean existMembername(String memberName) {
		return memberMapper.existMembername(memberName)==1;
	}

	@Override
	public Member getMemberById(int memberId) {
		return memberMapper.selectByPrimaryKey(memberId);
	}

	@Override
	public boolean updateMember(Member member) {
		return memberMapper.updateByPrimaryKeySelective(member)>0;
	}

	@Override
	public Member getMemberByName(String memberName) {
		return memberMapper.getMemberByName(memberName);
	}

}
