package com.bit.lms.model.dto;

public class ScoreDto {
	
	//��������
	private int		num;		// ������ȣ
	private int		testNum;	// �����ȣ
	private int		testScore;	// ��������
	
	//�����
	private UserDto	user;		// ����ڹ�ȣ(user.num)
	
	public ScoreDto() {
		
	}

	//getter, setter
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getTestNum() {
		return testNum;
	}

	public void setTestNum(int testNum) {
		this.testNum = testNum;
	}

	public int getTestScore() {
		return testScore;
	}

	public void setTestScore(int testScore) {
		this.testScore = testScore;
	}

	public UserDto getUser() {
		return user;
	}

	public void setUser(UserDto user) {
		this.user = user;
	}
	
	
	
	
}
