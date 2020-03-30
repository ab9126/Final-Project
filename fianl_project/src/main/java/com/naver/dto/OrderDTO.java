package com.naver.dto;

import java.io.Serializable;
import java.util.Arrays;

public class OrderDTO implements Serializable {

	/**
	* 
	*/
	private static final long serialVersionUID = 1L;
	private int o_num;
	private int o_fk_p_num;
	private String o_fk_m_id;
	private String o_memo;
	private String o_regdate;
	private int o_delivery;
	private String o_size;
	private String o_color;
	private int o_cnt;
	private String[] sizes;
	private String[] colors;
	private int[] cnts;

	public OrderDTO() {
		// TODO Auto-generated constructor stub
	}

	public OrderDTO(int o_num, int o_fk_p_num, String o_fk_m_id, String o_memo, String o_regdate, int o_delivery,
			String o_size, String o_color, int o_cnt, String[] sizes, String[] colors, int[] cnts) {
		super();
		this.o_num = o_num;
		this.o_fk_p_num = o_fk_p_num;
		this.o_fk_m_id = o_fk_m_id;
		this.o_memo = o_memo;
		this.o_regdate = o_regdate;
		this.o_delivery = o_delivery;
		this.o_size = o_size;
		this.o_color = o_color;
		this.o_cnt = o_cnt;
		this.sizes = sizes;
		this.colors = colors;
		this.cnts = cnts;
	}

	public int getO_num() {
		return o_num;
	}

	public void setO_num(int o_num) {
		this.o_num = o_num;
	}

	public int getO_fk_p_num() {
		return o_fk_p_num;
	}

	public void setO_fk_p_num(int o_fk_p_num) {
		this.o_fk_p_num = o_fk_p_num;
	}

	public String getO_fk_m_id() {
		return o_fk_m_id;
	}

	public void setO_fk_m_id(String o_fk_m_id) {
		this.o_fk_m_id = o_fk_m_id;
	}

	public String getO_memo() {
		return o_memo;
	}

	public void setO_memo(String o_memo) {
		this.o_memo = o_memo;
	}

	public String getO_regdate() {
		return o_regdate;
	}

	public void setO_regdate(String o_regdate) {
		this.o_regdate = o_regdate;
	}

	public int getO_delivery() {
		return o_delivery;
	}

	public void setO_delivery(int o_delivery) {
		this.o_delivery = o_delivery;
	}

	public String getO_size() {
		return o_size;
	}

	public void setO_size(String o_size) {
		this.o_size = o_size;
	}

	public String getO_color() {
		return o_color;
	}

	public void setO_color(String o_color) {
		this.o_color = o_color;
	}

	public int getO_cnt() {
		return o_cnt;
	}

	public void setO_cnt(int o_cnt) {
		this.o_cnt = o_cnt;
	}

	public String[] getSizes() {
		return sizes;
	}

	public void setSizes(String[] sizes) {
		this.sizes = sizes;
	}

	public String[] getColors() {
		return colors;
	}

	public void setColors(String[] colors) {
		this.colors = colors;
	}

	public int[] getCnts() {
		return cnts;
	}

	public void setCnts(int[] cnts) {
		this.cnts = cnts;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + o_num;
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
		OrderDTO other = (OrderDTO) obj;
		if (o_num != other.o_num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "OrderDTO [o_num=" + o_num + ", o_fk_p_num=" + o_fk_p_num + ", o_fk_m_id=" + o_fk_m_id + ", o_memo="
				+ o_memo + ", o_regdate=" + o_regdate + ", o_delivery=" + o_delivery + ", o_size=" + o_size
				+ ", o_color=" + o_color + ", o_cnt=" + o_cnt + ", sizes=" + Arrays.toString(sizes) + ", colors="
				+ Arrays.toString(colors) + ", cnts=" + Arrays.toString(cnts) + "]";
	}

}