package com.bit.lms.model.dto;

import java.sql.Date;

public class QnaDto {
	
	//Q&A
	private int		num;			//���������ȣ
	private String	qSub;			//��������
	private String	qContent;		//��������
	private Date	regDate;		//�����������
	private String	aSub;			//�亯����
	private String	aContent;		//�亯����
	private Date	updateDate;		//�亯�������
	
	private UserDto user;			//����ڹ�ȣ(user.num)
	
	//������
	public QnaDto() {
		
	}

	//getter, setter
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getqSub() {
		return qSub;
	}

	public void setqSub(String qSub) {
		this.qSub = qSub;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getaSub() {
		return aSub;
	}

	public void setaSub(String aSub) {
		this.aSub = aSub;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public UserDto getUser() {
		return user;
	}

	public void setUser(UserDto user) {
		this.user = user;
	}

}
