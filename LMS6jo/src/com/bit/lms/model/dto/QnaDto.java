package com.bit.lms.model.dto;

import java.sql.Date;

public class QnaDto {
	
	//Q&A
	private int	num;			//질의응답번호
	private String	qSub;			//질문제목
	private String	qContent;		//질문내용
	private Date	regDate;		//질문등록일자
	private String	aSub;			//답변제목
	private String	aContent;		//답변내용
	private Date	updateDate;		//답변등록일자
	
	private UserDto user;			//사용자번호(user.num)
	
	//생성자
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
