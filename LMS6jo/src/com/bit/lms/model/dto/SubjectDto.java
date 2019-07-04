package com.bit.lms.model.dto;

import java.sql.Date;

public class SubjectDto {
	
	//����
	private int 		num;			// ���¹�ȣ
	private String		name;			// ���¸�
	private String		content;		// ���¼���
	private int			limitNum;		// ���������ο�
	private String		limitEnd;		// ����������
	private String		eduStart;		// ��������
	private String		eduEnd;			// ��������
	private Date		regdate;		// �����ۼ�����
	private int			classNum;		// �ݹ�ȣ
	private String		className;		// �ݸ�
	
	//������
	private AdminDto	admin;			//�����ڹ�ȣ(admin.num)

	//getter, setter
	public SubjectDto() {
		
	}

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

	public int getLimitNum() {
		return limitNum;
	}

	public void setLimitNum(int limitNum) {
		this.limitNum = limitNum;
	}

	public String getLimitEnd() {
		return limitEnd;
	}

	public void setLimitEnd(String limitEnd) {
		this.limitEnd = limitEnd;
	}

	public String getEduStart() {
		return eduStart;
	}

	public void setEduStart(String eduStart) {
		this.eduStart = eduStart;
	}

	public String getEduEnd() {
		return eduEnd;
	}

	public void setEduEnd(String eduEnd) {
		this.eduEnd = eduEnd;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public AdminDto getAdmin() {
		return admin;
	}

	public void setAdmin(AdminDto admin) {
		this.admin = admin;
	}
	
	
	
	
}
