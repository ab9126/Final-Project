package com.naver.dto;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Map;

public class ProductDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int p_num;
	private String p_title;
	private int p_price;
	private String p_info;
	private String p_regdate;
	private String p_updatedate;
	private int p_readcnt;
	private int p_sellcnt;
	private String p_thumb;
	private String p_catecode;
	private String p_fk_m_id;
	private String[] filenames;
	private String[] sizeArr;
	private String[] colorArr;
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}



	public ProductDTO(int p_num, String p_title, int p_price, String p_info, String p_regdate, String p_updatedate,
			int p_readcnt, int p_sellcnt, String p_thumb, String p_catecode, String p_fk_m_id, String[] filenames,
			String[] sizeArr, String[] colorArr) {
		super();
		this.p_num = p_num;
		this.p_title = p_title;
		this.p_price = p_price;
		this.p_info = p_info;
		this.p_regdate = p_regdate;
		this.p_updatedate = p_updatedate;
		this.p_readcnt = p_readcnt;
		this.p_sellcnt = p_sellcnt;
		this.p_thumb = p_thumb;
		this.p_catecode = p_catecode;
		this.p_fk_m_id = p_fk_m_id;
		this.filenames = filenames;
		this.sizeArr = sizeArr;
		this.colorArr = colorArr;
	}



	public String[] getSizeArr() {
		return sizeArr;
	}

	public void setSizeArr(String[] sizeArr) {
		this.sizeArr = sizeArr;
	}

	public String[] getColorArr() {
		return colorArr;
	}

	public void setColorArr(String[] colorArr) {
		this.colorArr = colorArr;
	}

	public String[] getFilenames() {
		return filenames;
	}

	public void setFilenames(String[] filenames) {
		this.filenames = filenames;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_info() {
		return p_info;
	}

	public void setP_info(String p_info) {
		this.p_info = p_info;
	}

	public String getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}

	public String getP_updatedate() {
		return p_updatedate;
	}

	public void setP_updatedate(String p_updatedate) {
		this.p_updatedate = p_updatedate;
	}

	public int getP_readcnt() {
		return p_readcnt;
	}

	public void setP_readcnt(int p_readcnt) {
		this.p_readcnt = p_readcnt;
	}

	public int getP_sellcnt() {
		return p_sellcnt;
	}

	public void setP_sellcnt(int p_sellcnt) {
		this.p_sellcnt = p_sellcnt;
	}

	public String getP_thumb() {
		return p_thumb;
	}

	public void setP_thumb(String p_thumb) {
		this.p_thumb = p_thumb;
	}

	public String getP_catecode() {
		return p_catecode;
	}

	public void setP_catecode(String p_catecode) {
		this.p_catecode = p_catecode;
	}

	public String getP_fk_m_id() {
		return p_fk_m_id;
	}

	public void setP_fk_m_id(String p_fk_m_id) {
		this.p_fk_m_id = p_fk_m_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + p_num;
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
		ProductDTO other = (ProductDTO) obj;
		if (p_num != other.p_num)
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "ProductDTO [p_num=" + p_num + ", p_title=" + p_title + ", p_price=" + p_price + ", p_info=" + p_info
				+ ", p_regdate=" + p_regdate + ", p_updatedate=" + p_updatedate + ", p_readcnt=" + p_readcnt
				+ ", p_sellcnt=" + p_sellcnt + ", p_thumb=" + p_thumb + ", p_catecode=" + p_catecode + ", p_fk_m_id="
				+ p_fk_m_id + ", filenames=" + Arrays.toString(filenames) + ", sizeArr=" + Arrays.toString(sizeArr)
				+ ", colorArr=" + Arrays.toString(colorArr) + "]";
	}

}
