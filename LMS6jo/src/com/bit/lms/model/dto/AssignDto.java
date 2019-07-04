package com.bit.lms.model.dto;

import java.sql.Date;

public class AssignDto {

	//과제관리
	private int 	num;		// 과제번호
	private String	name;		// 과제제목
	private String	content;	// 과제내용
	private Date	regdate;	// 과제등록일자
	private String	fileName;	// 파일명
	private String	firlPath;	// 파일경로
	
	//사용자
	private UserDto user;		// 사용자번호(user.num)
	
	//생성자
	public AssignDto() {
		
	}

	//getter, setter
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFirlPath() {
		return firlPath;
	}

	public void setFirlPath(String firlPath) {
		this.firlPath = firlPath;
	}

	public UserDto getUser() {
		return user;
	}

	public void setUser(UserDto user) {
		this.user = user;
	}
	
	
}
