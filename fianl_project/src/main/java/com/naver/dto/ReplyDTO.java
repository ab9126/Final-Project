package com.naver.dto;

import java.io.Serializable;

public class ReplyDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	
//	CREATE TABLE tbl_reply(
//			r_num number(5) primary key,
//			r_fk_q_num number(5) not null,
//			r_replytext varchar2(1000) not null,
//			r_fk_m_id varchar2(15) not null,
//			r_regdate date default sysdate,
//			r_updatedate date default sysdate
//			);
//			,constraint r_fk_q_num foreign key(r_fk_q_num) 
//			references tbl_qna(q_num) on delete cascade
//			,constraint r_fk_m_id foreign key(r_fk_m_id) 
//			references tbl_member(m_id) on delete cascade

	
	private int r_num;
	private int r_fk_q_num;
	private String r_replytext;
	private String r_fk_m_id;
	private String r_regdate;
	private String r_updatedate;
	
	public ReplyDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReplyDTO(int r_num, int r_fk_q_num, String r_replytext, String r_fk_m_id, String r_regdate,
			String r_updatedate) {
		super();
		this.r_num = r_num;
		this.r_fk_q_num = r_fk_q_num;
		this.r_replytext = r_replytext;
		this.r_fk_m_id = r_fk_m_id;
		this.r_regdate = r_regdate;
		this.r_updatedate = r_updatedate;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public int getR_fk_q_num() {
		return r_fk_q_num;
	}

	public void setR_fk_q_num(int r_fk_q_num) {
		this.r_fk_q_num = r_fk_q_num;
	}

	public String getR_replytext() {
		return r_replytext;
	}

	public void setR_replytext(String r_replytext) {
		this.r_replytext = r_replytext;
	}

	public String getR_fk_m_id() {
		return r_fk_m_id;
	}

	public void setR_fk_m_id(String r_fk_m_id) {
		this.r_fk_m_id = r_fk_m_id;
	}

	public String getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(String r_regdate) {
		this.r_regdate = r_regdate;
	}

	public String getR_updatedate() {
		return r_updatedate;
	}

	public void setR_updatedate(String r_updatedate) {
		this.r_updatedate = r_updatedate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + r_num;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReplyDTO other = (ReplyDTO) obj;
		if (r_num != other.r_num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ReplyDTO [r_num=" + r_num + ", r_fk_q_num=" + r_fk_q_num + ", r_replytext=" + r_replytext
				+ ", r_fk_m_id=" + r_fk_m_id + ", r_regdate=" + r_regdate + ", r_updatedate=" + r_updatedate + "]";
	}
	
	
	


	
	
}
