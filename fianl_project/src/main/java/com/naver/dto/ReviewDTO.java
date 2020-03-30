package com.naver.dto;

import java.io.Serializable;
import java.util.Arrays;

public class ReviewDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int r_num;
	private int r_fk_p_num;
	private String r_content;
	private int r_grade;
	private String r_regdate;
	private String r_updatedate;
	private String r_fk_m_id;
	private String r_thumb;
	private String[] filenames;
	private int recom;
	private int derecom;
	
	public ReviewDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewDTO(int r_num, int r_fk_p_num, String r_content, int r_grade, String r_regdate, String r_updatedate,
			String r_fk_m_id, String r_thumb, String[] filenames, int recom, int derecom) {
		super();
		this.r_num = r_num;
		this.r_fk_p_num = r_fk_p_num;
		this.r_content = r_content;
		this.r_grade = r_grade;
		this.r_regdate = r_regdate;
		this.r_updatedate = r_updatedate;
		this.r_fk_m_id = r_fk_m_id;
		this.r_thumb = r_thumb;
		this.filenames = filenames;
		this.recom = recom;
		this.derecom = derecom;
	}

	public int getR_num() {
		return r_num;
	}

	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public int getR_fk_p_num() {
		return r_fk_p_num;
	}

	public void setR_fk_p_num(int r_fk_p_num) {
		this.r_fk_p_num = r_fk_p_num;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public int getR_grade() {
		return r_grade;
	}

	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
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

	public String getR_fk_m_id() {
		return r_fk_m_id;
	}

	public void setR_fk_m_id(String r_fk_m_id) {
		this.r_fk_m_id = r_fk_m_id;
	}

	public String getR_thumb() {
		return r_thumb;
	}

	public void setR_thumb(String r_thumb) {
		this.r_thumb = r_thumb;
	}

	public String[] getFilenames() {
		return filenames;
	}

	public void setFilenames(String[] filenames) {
		this.filenames = filenames;
	}

	public int getRecom() {
		return recom;
	}

	public void setRecom(int recom) {
		this.recom = recom;
	}

	public int getDerecom() {
		return derecom;
	}

	public void setDerecom(int derecom) {
		this.derecom = derecom;
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
		ReviewDTO other = (ReviewDTO) obj;
		if (r_num != other.r_num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ReviewDTO [r_num=" + r_num + ", r_fk_p_num=" + r_fk_p_num + ", r_content=" + r_content + ", r_grade="
				+ r_grade + ", r_regdate=" + r_regdate + ", r_updatedate=" + r_updatedate + ", r_fk_m_id=" + r_fk_m_id
				+ ", r_thumb=" + r_thumb + ", filenames=" + Arrays.toString(filenames) + ", recom=" + recom
				+ ", derecom=" + derecom + "]";
	}
	
	
	
}
