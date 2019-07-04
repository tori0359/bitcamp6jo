package com.bit.lms.model.dao;

import java.util.ArrayList;

import com.bit.lms.model.dto.UserDto;

public class ClassDao {
	
	//반 매칭 왼쪽테이블 불러오기 (반 없는애들 불러옴)
	public ArrayList<UserDto> noClass(int num, String name, int subject){
		ArrayList<UserDto> list= new ArrayList<UserDto>();
		
		return list;
	}
	
	//반 매칭 오른쪽테이블 불러오기 (각 반마다 불러와야함)
	public ArrayList<UserDto> yesClass(){
		ArrayList<UserDto> list=new ArrayList<UserDto>();
		
		return list;
	}
	
	//반없는애들 반 배정해주기 (왼쪽에서 오른쪽으로)
	public void giveClass(){
		
	}
	
	
	//반있는애들 반없애기 (오른쪽에서 왼쪽으로)
	public void deleteClass(){
		
	}

	//userdto에서 반 추가하고 subject에서 반 빼야할듯...
}
