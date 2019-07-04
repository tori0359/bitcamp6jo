package com.bit.lms.model.dao;

import com.bit.lms.model.dto.UserDto;

//사용자Dao
public class UserDao {
	
	//회원가입
	public int joinUs(UserDto user){
		return 0;
	}
	
	//로그인(로그아웃은 session에서 처리한다.)
	public int login(String id, String pwd){
		
		return 0;
	}
	
	//비밀번호 찾기
	public String findPw(String id, int pwq, String pwa){
		
		return null;
	}
	
	//비밀번호 변경
	public int updPw(String pw1, String pw2){
		
		return 0;
	}
	
	

	
	
}
