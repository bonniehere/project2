package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.MemberDTO;

public interface MemberService {
	// 회원가입 구현
	public void write(MemberDTO member);
	// 회원정보수정
	public void modify(MemberDTO member);
	// 회원삭제
	public void remove(MemberDTO member);
	// 회원목록리스트(관리자)
	public ArrayList<MemberDTO> list();
	// 회원상세내용(관리자)
	public MemberDTO detail(MemberDTO member);
	// 로그인
	public MemberDTO login(MemberDTO member);
	public MemberDTO login2(MemberDTO member);
	public MemberDTO login3(MemberDTO member);
}
