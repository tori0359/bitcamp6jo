package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.lms.db.conn.LmsOracle;
import com.bit.lms.model.dto.SubjectDto;

public class SubjectDao {
/*
 * 	private int 		num;			// 강좌번호
	private String		name;			// 강좌명
	private String		content;		// 강좌설명
	private int			limitNum;		// 강좌제한인원
	private String		limitEnd;		// 수강마감일
	private String		eduStart;		// 개강일자
	private String		eduEnd;			// 종강일자
	private Date		regdate;		// 강좌작성일자
	private int			classNum;		// 반번호
	private String		className;		// 반명
 */
	private Connection 			conn;
	private PreparedStatement 	pstmt;
	private ResultSet			rs;
	//강좌목록
	public ArrayList<SubjectDto> subjectList(){
		ArrayList<SubjectDto> list=new ArrayList<SubjectDto>();
		String sql = "select a.subno as num, a.subnm as name, a.limitno as limitNum, a.eduend as limitEnd, b.adno "
				+ "from subject a, admins b where a.adno=b.adno and b.deptno=1";
		System.out.println(sql);
		try {
			conn=LmsOracle.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				SubjectDto bean = new SubjectDto();
				bean.setNum(rs.getInt("num"));
				bean.setName(rs.getString("name"));
//				bean.setAdmin(rs.getObject("admin"));
				bean.setLimitNum(rs.getInt("limitNum"));
				bean.setLimitEnd(rs.getString("limitEnd"));
				list.add(bean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				if(conn!=null){conn.close();}
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		}

		return list;
	}
	
	//강좌 추가
	public void subjectAdd(String name, String content, int limitNum, String limitEnd, String eduStart, String eduEnd, Date regdate) {
		
	}
	
	//강좌 수정
	public void subjectEdit(String name, String content, int limitNum, String limitEnd, String eduStart, String eduEnd, Date regdate) {
		
	}
	//강좌 삭제
	public void subjectDelete(int num) {
		
	}
	//강좌
}
