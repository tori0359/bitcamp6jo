package com.bit.lms.model.dto;

import java.sql.Date;

public class UserDto {
	
	//�����
	private int 		num;		//����ڹ�ȣ
	private String 		id;			//����ھ��̵�
	private String 		name;		//������̸� 
	private String 		pw1;		//�н�����
	private String 		pw2;		//�н�����Ȯ��
	private String  	hp;			//�ڵ�����ȣ
	private String 		email;		//�̸���
	private String 		sex;		//����
	private int			subject;	//�������(1:Java��, 2:DB��, 3:Web��)
	private Date		regdate;	//�������
	private int			state;		//���°�(0:����, 1:ȸ��Ż����)
	private String		pwA;		//��й�ȣ��
	private int			joinPath;	//���԰��(1:���ͳݱ���,2:��뼾����õ,3:������õ)
	
	//����
	private SubjectDto	sub;		//���¹�ȣ(sub.num)
	
	//��й�ȣã��
	private AdminDto	pwf;		//��й�ȣã���ȣ(pwf.num)
	
	//�⺻������
	public UserDto() {
		
	}
	
	//getter(),setter()
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw1() {
		return pw1;
	}

	public void setPw1(String pw1) {
		this.pw1 = pw1;
	}

	public String getPw2() {
		return pw2;
	}

	public void setPw2(String pw2) {
		this.pw2 = pw2;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getSubject() {
		return subject;
	}

	public void setSubject(int subject) {
		this.subject = subject;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getPwA() {
		return pwA;
	}

	public void setPwA(String pwA) {
		this.pwA = pwA;
	}

	public int getJoinPath() {
		return joinPath;
	}

	public void setJoinPath(int joinPath) {
		this.joinPath = joinPath;
	}

	public SubjectDto getSub() {
		return sub;
	}

	public void setSub(SubjectDto sub) {
		this.sub = sub;
	}

	public AdminDto getPwfNum() {
		return pwf;
	}

	public void setPwf(AdminDto pwfNum) {
		this.pwf = pwfNum;
	}


}
