package com.bit.lms.model.dao;

import java.util.ArrayList;

import com.bit.lms.model.dto.LearningMaterialsDto;


public class LearningMaterialsDao {
	
	//목록
	public ArrayList<LearningMaterialsDto> list(){
		ArrayList<LearningMaterialsDto> list=new ArrayList<LearningMaterialsDto>();
		
		return list;
	}
	
	//추가 (nextval로 num, sysdate로 regdate) 
	public void addList(String name, String fileName, String filePath){
		
	}
	
	//수정
	public void editOne(int num, String name){
		
	}
	
	//삭제 1
	public void deleteOne(int num){   
		
	}
	
	/*	private int 	num;		//학습자료번호
	private String 	name;		//학습자료이름
	private Date	regdate;	//학습자료등록일자
	private String	fileName;	//파일명
	private String 	filePath;	//파일경로*/
}
