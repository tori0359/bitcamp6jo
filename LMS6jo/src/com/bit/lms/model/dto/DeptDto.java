package com.bit.lms.model.dto;

public class DeptDto {
	
	//�μ�
	private int 	num;		//�μ���ȣ
	private String 	name;		//�μ���(1:����, 2:������, 3:������, 4:�����, 5:ȸ����)
	
	//������
	public DeptDto() {
		
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



	
	
	
}
