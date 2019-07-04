package com.bit.lms.model.dto;

import java.sql.Date;

public class NoticeDto {
	
	//��������
	private int 	num;			//�������� ��ȣ
	private String	subject;		//�������� ����
	private String	content;		//�������� ����
	private Date	regdate;		//�������� �������
	private int		topstate;		//�������� ��ܳ�����°�(0:��������x, 1:��������o)
	
	//������ ��ü
	private AdminDto admin;		//�����ڹ�ȣ(admin.num)
	
	public NoticeDto() {
		
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
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

	public int getTopstate() {
		return topstate;
	}

	public void setTopstate(int topstate) {
		this.topstate = topstate;
	}

	public AdminDto getAdmin() {
		return admin;
	}

	public void setAdmin(AdminDto admin) {
		this.admin = admin;
	}
	
	
	
}
