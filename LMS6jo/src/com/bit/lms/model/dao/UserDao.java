package com.bit.lms.model.dao;

import com.bit.lms.model.dto.UserDto;

//사용자
public class UserDao {
	
	//회원가입
	public int joinUs(UserDto user){
		return 0;
	}
	
	//로그인(로그아웃 session처리)
	public int login(String id, String pwd){
		
		return 0;
	}
	
	//비밀번호찾기 - id
	public String findPw(String id, int pwq, String pwa){
		
		return null;
	}
	
	//비밀번호찾기
	public int updPw(String pw1, String pw2){
		
		return 0;
	}
	
	
	public String findPw2(String id, int pwq, String pwa){
		
		return null;
	}
	
	
}
