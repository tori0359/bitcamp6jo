package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.lms.db.conn.LmsOracle;
import com.bit.lms.model.dto.QnaDto;

public class QnaDao {

	//질의응답 목록
	public ArrayList<QnaDto> qnaList(){
		ArrayList<QnaDto> list=new ArrayList<QnaDto>();
		
		String sql="select A.qnano,A.qsub,B.name,A.regdate,A.asub,C.subnm from qna A,users B,subject C where A.userno=B.userno and B.subno=C.subno";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=LmsOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				QnaDto qto=new QnaDto();
				qto.setNum(rs.getInt("qnano"));
				qto.setName2(rs.getString("subnm"));
				qto.setqSub(rs.getString("qsub"));
				qto.setName1(rs.getString("name"));
				qto.setRegDate(rs.getDate("regdate"));
				qto.setaSub(rs.getString("asub"));
				list.add(qto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		return list;
	}
	
	//질의응답 상세
	public QnaDto qnaDetail(int num){
		QnaDto qto=new QnaDto();
		String sql="select A.qnano,A.qsub,B.name,A.regdate,A.qcontent from qna A,users B where A.userno=B.userno and A.qnano=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=LmsOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()){
				qto.setNum(rs.getInt("qnano"));
				qto.setqSub(rs.getString("qsub"));
				qto.setName1(rs.getString("name"));
				qto.setRegDate(rs.getDate("regdate"));
				qto.setqContent(rs.getString("qcontent"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return qto;
	}
	
	//질의응답 등록
	public int qnaAInsert(String sub, String content, Date regdate, int userno){
		int result=0;
		String sql="insert into qna (qnano,qsub,qcontent,regdate,userno) values (qna_seq.nextval,?,?,?,?)";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=LmsOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sub);
			pstmt.setString(2, content);
			pstmt.setDate(3, regdate);
			pstmt.setInt(4, userno);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//질의응답 수정
	public int qnaAUpd(String asub, String acontent, int adno){
		int result=0;
		String sql="update qna set asub=?,acontent=? where qnano=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=LmsOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, asub);
			pstmt.setString(2, acontent);
			pstmt.setInt(3, adno);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//질의응답 삭제
	public int qnaADel(int num){
		
		int result=0;
		
		
		return result;
	}
	
}
