package com.bit.lms.model.dto;

public class AdminDto {
	
	//������
	private int 	num;		//�����ڹ�ȣ
	private String 	id;			//�����ھ��̵�
	private String 	name;		//�������̸� 
	private String 	pw1;		//�н�����
	private String 	pw2;		//�н�����Ȯ��
	private String  hp;			//�ڵ�����ȣ
	private String 	email;		//�̸���
	private String 	sex;		//����
	private int		state;		//���°�(0:����, 1:ȸ��Ż����)
	private String	confirmNum;	//Ȯ�ι�ȣ
	private String	pwA;		//��й�ȣ��

	//����(�����ںμ�)
	private DeptDto	dept;		//���޹�ȣ(dept.num)		
	//��й�ȣã��
	private PwfDto	pwf;		//��й�ȣã���ȣ(pwf.num)
	
	//������
	public AdminDto() {
		
	}

	//getter,setter
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getConfirmNum() {
		return confirmNum;
	}

	public void setConfirmNum(String confirmNum) {
		this.confirmNum = confirmNum;
	}

	public String getPwA() {
		return pwA;
	}

	public void setPwA(String pwA) {
		this.pwA = pwA;
	}

	public DeptDto getDept() {
		return dept;
	}

	public void setDept(DeptDto dept) {
		this.dept = dept;
	}
	
}
