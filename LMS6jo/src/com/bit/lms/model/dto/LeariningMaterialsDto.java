package com.bit.lms.model.dto;

import java.sql.Date;

public class LeariningMaterialsDto {
	
	//�н��ڷ�
	private int 	num;		//�н��ڷ��ȣ
	private String 	name;		//�н��ڷ��̸�
	private Date	regdate;	//�н��ڷ�������
	private String	fileName;	//���ϸ�
	private String 	filePath;	//���ϰ��
	
	//������ ��ü
	private AdminDto admin;		//�����ڹ�ȣ(admin.num)
	
	//������
	public LeariningMaterialsDto() {
		
	}

	//getter,setter
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

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public AdminDto getAdmin() {
		return admin;
	}

	public void setAdmin(AdminDto admin) {
		this.admin = admin;
	}
	
	
	
}
