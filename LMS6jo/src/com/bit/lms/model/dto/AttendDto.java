package com.bit.lms.model.dto;

import java.sql.Date;

public class AttendDto {
	//������
	private int		num;			//����ȣ
	private int		state;			//������(1:�⼮,2:����,3:����,4:�Ἦ)
	private Date	attDate;		//�������
	
	//�����
	private UserDto user;			//����ڹ�ȣ(user.num)
	
	//getter, setter
	public AttendDto() {
		
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Date getAttDate() {
		return attDate;
	}

	public void setAttDate(Date attDate) {
		this.attDate = attDate;
	}

	public UserDto getUser() {
		return user;
	}

	public void setUser(UserDto user) {
		this.user = user;
	}
	
	
}
