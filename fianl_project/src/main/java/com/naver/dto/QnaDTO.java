package com.naver.dto;

import java.io.Serializable;

public class QnaDTO implements Serializable {

	/**
	* 
	*/
	private static final long serialVersionUID = 1L;
	private int q_num;
	private String q_title;
	private String q_fk_m_id;
	private String q_regdate;
	private String q_content;
	private String q_secret;
	private int q_fk_p_num;
	private int q_reproot;
	private int q_repstep;
	private int q_indent;
	private String q_thumb;
	private String[] q_filenames;

	public QnaDTO() {
		// TODO Auto-generated constructor stub
	}

	public QnaDTO(int q_num, String q_title, String q_fk_m_id, String q_regdate, String q_content, String q_secret,
			int q_fk_p_num, int q_reproot, int q_repstep, int q_indent, String q_thumb) {
		super();
		this.q_num = q_num;
		this.q_title = q_title;
		this.q_fk_m_id = q_fk_m_id;
		this.q_regdate = q_regdate;
		this.q_content = q_content;
		this.q_secret = q_secret;
		this.q_fk_p_num = q_fk_p_num;
		this.q_reproot = q_reproot;
		this.q_repstep = q_repstep;
		this.q_indent = q_indent;
		this.q_thumb = q_thumb;
	}

	public QnaDTO(int q_num, String q_title, String q_fk_m_id, String q_regdate, String q_content, String q_secret,
			int q_fk_p_num, int q_reproot, int q_repstep, int q_indent, String q_thumb, String[] q_filenames) {
		super();
		this.q_num = q_num;
		this.q_title = q_title;
		this.q_fk_m_id = q_fk_m_id;
		this.q_regdate = q_regdate;
		this.q_content = q_content;
		this.q_secret = q_secret;
		this.q_fk_p_num = q_fk_p_num;
		this.q_reproot = q_reproot;
		this.q_repstep = q_repstep;
		this.q_indent = q_indent;
		this.q_thumb = q_thumb;
		this.q_filenames = q_filenames;
	}

	public String[] getQ_filenames() {
		return q_filenames;
	}

	public void setQ_filenames(String[] q_filenames) {
		this.q_filenames = q_filenames;
	}

	public int getQ_num() {
		return q_num;
	}

	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_fk_m_id() {
		return q_fk_m_id;
	}

	public void setQ_fk_m_id(String q_fk_m_id) {
		this.q_fk_m_id = q_fk_m_id;
	}

	public String getQ_regdate() {
		return q_regdate;
	}

	public void setQ_regdate(String q_regdate) {
		this.q_regdate = q_regdate;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_secret() {
		return q_secret;
	}

	public void setQ_secret(String q_secret) {
		this.q_secret = q_secret;
	}

	public int getQ_fk_p_num() {
		return q_fk_p_num;
	}

	public void setQ_fk_p_num(int q_fk_p_num) {
		this.q_fk_p_num = q_fk_p_num;
	}

	public int getQ_reproot() {
		return q_reproot;
	}

	public void setQ_reproot(int q_reproot) {
		this.q_reproot = q_reproot;
	}

	public int getQ_repstep() {
		return q_repstep;
	}

	public void setQ_repstep(int q_repstep) {
		this.q_repstep = q_repstep;
	}

	public int getQ_indent() {
		return q_indent;
	}

	public void setQ_indent(int q_indent) {
		this.q_indent = q_indent;
	}

	public String getQ_thumb() {
		return q_thumb;
	}

	public void setQ_thumb(String q_thumb) {
		this.q_thumb = q_thumb;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + q_num;
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
		QnaDTO other = (QnaDTO) obj;
		if (q_num != other.q_num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "QnaDTO [q_num=" + q_num + ", q_title=" + q_title + ", q_fk_m_id=" + q_fk_m_id + ", q_regdate="
				+ q_regdate + ", q_content=" + q_content + ", q_secret=" + q_secret + ", q_fk_p_num=" + q_fk_p_num
				+ ", q_reproot=" + q_reproot + ", q_repstep=" + q_repstep + ", q_indent=" + q_indent + ", q_thumb="
				+ q_thumb + "]";
	}

}