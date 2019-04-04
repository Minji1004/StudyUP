package com.sp.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sp.common.dao.CommonDAO;

@Service("member.memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private CommonDAO  dao;
	
	@Override
	public Member loginMember(String userId) {
		Member dto=null;
		
		try {
			dto=dao.selectOne("member.loginMember", userId);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}

	@Override
	public int insertMember(Member dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMembership(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateLastLogin(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMember(Member dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member readMember(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member readMember(long memberIdx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> listMember(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
