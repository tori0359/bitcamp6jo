package com.bit.lms.model.dto;

import java.sql.Date;

public class AssignDto {

	//��������
	private int 	num;		// ������ȣ
	private String	name;		// ��������
	private String	content;	// ��������
	private Date	regdate;	// �����������
	private String	fileName;	// ���ϸ�
	private String	firlPath;	// ���ϰ��
	
	//�����
	private UserDto user;		// ����ڹ�ȣ(user.num)
	
	//������
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
