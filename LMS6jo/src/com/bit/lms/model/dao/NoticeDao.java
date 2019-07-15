package com.bit.lms.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.lms.db.conn.LmsOracle;
import com.bit.lms.model.dto.NoticeDto;

//공지사항
public class NoticeDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public NoticeDao() {
		conn=LmsOracle.getConnection();
	}
	public Connection getConnection(){
		return this.conn;
	}
	


	//목록불러오기!!
	public ArrayList<NoticeDto> list(){
		ArrayList<NoticeDto> list=new ArrayList<NoticeDto>();
		String sql="select * from(select rownum as rn,nno,nsub,ncontent,regdate,topstate,adno from(select * from notice order by topstate desc, nno desc))";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				NoticeDto dto=new NoticeDto();
				dto.setNum(rs.getInt("nno"));
				dto.setSubject(rs.getString("nsub"));
				dto.setContent(rs.getString("ncontent"));
				dto.setRegdate(rs.getDate("regdate"));
				dto.setTopstate(rs.getInt("topstate"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
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
