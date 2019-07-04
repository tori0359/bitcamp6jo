package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.lms.model.dto.NoticeDto;

//공지사항
public class NoticeDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	private void getConnection(){
		String driver="oracle.jdbc.driver.OracleDirver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String password="hr";
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//목록불러오기!!
	public ArrayList<NoticeDto> list(){
		ArrayList<NoticeDto> list=new ArrayList<NoticeDto>();
		
		return list;
	}
	
	//추가
	public void addList(){
		
	}
	
	
}
