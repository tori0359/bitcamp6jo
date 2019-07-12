package com.bit.lms.model.dao;

import java.sql.Connection;
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
		}
		
		
		
		return list;
	}
	
	//질의응답 상세
	public QnaDto qnaDetail(int num){
		QnaDto qto=new QnaDto();
		String sql1="select A.qnano,A.qsub,B.name,A.regdate from qna A,users B,subject C where A.userno=B.userno and B.subno=C.subno";
		String sql="select qnano,qsub,name,regdate,qcontent from qna where num=?";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=LmsOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
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
		}
		
		return qto;
	}
	
	//질의응답 등록
	public int qnaAInsert(){
		
		return 0;
	}
	
	//질의응답 수정
	public int qnaAUpd(){
		
		return 0;
	}
	
	//질의응답 삭제
	public int qnaADel(){
		
		return 0;
	}
	
}
