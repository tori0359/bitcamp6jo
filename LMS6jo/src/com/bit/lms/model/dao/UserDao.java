package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bit.lms.db.conn.LmsOracle;
import com.bit.lms.model.dto.UserDto;

//사용자
public class UserDao {
	
	private Connection 			conn;
	private PreparedStatement 	pstmt;
	private ResultSet			rs;
	
	public UserDao() {
		conn=LmsOracle.getConnection();
	}
	public Connection getConnection(){
		return this.conn;
	}
	
	//회원가입
	public int joinUs(UserDto user){
		String sql="insert into users (userno,id,name,pw1,pw2,cp,email,sex,regdate,pwa,jpath,pwfno,subno) values (users_seq.nextval,?,?,?,?,?,?,?,sysdate,?,?,?,?)";
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getPw1());
			pstmt.setString(4, user.getPw2());
			pstmt.setString(5, user.getCp());
			pstmt.setString(6, user.getEmail());
			pstmt.setInt(7, user.getSex());
			pstmt.setString(8, user.getPwA());//비번 답
			pstmt.setInt(9, user.getJoinPath());//가입경로
			pstmt.setInt(10, user.getPwfno());//비번찾기 질문
			pstmt.setInt(11, user.getSubject());//강좌선택
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		return result;
	}
	
	//아이디 중복확인
	public int confirmId(String id){
		String sql="select id from users where id=?";
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result=1;
			}else{
				result=0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	//로그인(로그아웃 session처리)
	public int login(String id, String pwd){
		
		return 0;
	}
	
	//비밀번호찾기 - id
	public String findPw(String id, int pwq, String pwa){
		
		return null;
	}
	
	//비밀번호찾기
	public int updPw(String pw1, String pw2){
		
		return 0;
	}
	
	//회원탈퇴
	public int withDrawal(UserDto user){
		
		return 0;
	}
	
}
