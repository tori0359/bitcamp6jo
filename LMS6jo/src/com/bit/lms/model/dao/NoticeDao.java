package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.lms.model.dto.NoticeDto;

//공지사항
public class NoticeDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
//	private void getConnection(){
//		String driver="oracle.jdbc.driver.OracleDirver";
//		String url="jdbc:oracle:thin:@localhost:1521:xe";
//		String user="hr";
//		String password="hr";
//		try {
//			Class.forName(driver);
//			conn=DriverManager.getConnection(url, user, password);
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}

	//목록불러오기!!
	public ArrayList<NoticeDto> list(){
		ArrayList<NoticeDto> list=new ArrayList<NoticeDto>();
		
		return list;
	}
	
	
	//상세보기
	public void detailOne(int num){
		
	}
	
	//추가 (nextval로 num, sysdate로 regdate)
	public void addList(String subject, String content, int topstate){
		
	}
	
	//수정
	public void editOne(int num, String sub, int topstate){
		
	}
	
	//삭제
	public void deleteOne(int num){
		
	}
	/*
	 * private int 	num;			//공지사항 번호
	private String	subject;		//공지사항 제목
	private String	content;		//공지사항 내용
	private Date	regdate;		//공지사항 등록일자
	private int		topstate;		//공지사항 상단노출상태값(0:공지사항x, 1:공지사항o)
	 */
	
	
	
}
