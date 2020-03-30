package com.naver.dto;

import java.io.Serializable;
import java.util.Arrays;

public class OrderSubDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int p_num;
	private String p_title;
	private int p_price;
	private String p_thumb;
	private String p_fk_m_id;
	private String m_id;
	private String m_name;
	private String m_email;
	private String m_ph;
	private String m_oaddress;
	private String m_address;
	private String m_detailaddress;
	private int o_num;
	private int o_fk_p_num;
	private String o_fk_m_id;
	private String o_memo;
	private String o_regdate;
	private int o_delivery;
	private String o_size;
	private String o_color;
	private int o_cnt;
	private int[] p_nums;
	private String[] sizes;
	private String[] colors;
	private int[] cnts;

	public OrderSubDTO() {
		// TODO Auto-generated constructor stub
	}

	public OrderSubDTO(int p_num, String p_title, int p_price, String p_thumb, String p_fk_m_id, String m_id,
			String m_name, String m_email, String m_ph, String m_oaddress, String m_address, String m_detailaddress,
			int o_num, int o_fk_p_num, String o_fk_m_id, String o_memo, String o_regdate, int o_delivery, String o_size,
			String o_color, int o_cnt, String[] sizes, String[] colors, int[] cnts) {
		super();
		this.p_num = p_num;
		this.p_title = p_title;
		this.p_price = p_price;
		this.p_thumb = p_thumb;
		this.p_fk_m_id = p_fk_m_id;
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_ph = m_ph;
		this.m_oaddress = m_oaddress;
		this.m_address = m_address;
		this.m_detailaddress = m_detailaddress;
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
	public int[] getP_nums() {
		return p_nums;
	}

	public void setP_nums(int[] p_nums) {
		this.p_nums = p_nums;
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

	public String getP_thumb() {
		return p_thumb;
	}

	public void setP_thumb(String p_thumb) {
		this.p_thumb = p_thumb;
	}

	public String getP_fk_m_id() {
		return p_fk_m_id;
	}

	public void setP_fk_m_id(String p_fk_m_id) {
		this.p_fk_m_id = p_fk_m_id;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_ph() {
		return m_ph;
	}

	public void setM_ph(String m_ph) {
		this.m_ph = m_ph;
	}

	public String getM_oaddress() {
		return m_oaddress;
	}

	public void setM_oaddress(String m_oaddress) {
		this.m_oaddress = m_oaddress;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_detailaddress() {
		return m_detailaddress;
	}

	public void setM_detailaddress(String m_detailaddress) {
		this.m_detailaddress = m_detailaddress;
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
		OrderSubDTO other = (OrderSubDTO) obj;
		if (o_num != other.o_num)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "OrderSubDTO [p_num=" + p_num + ", p_title=" + p_title + ", p_price=" + p_price + ", p_thumb=" + p_thumb
				+ ", p_fk_m_id=" + p_fk_m_id + ", m_id=" + m_id + ", m_name=" + m_name + ", m_email=" + m_email
				+ ", m_ph=" + m_ph + ", m_oaddress=" + m_oaddress + ", m_address=" + m_address + ", m_detailaddress="
				+ m_detailaddress + ", o_num=" + o_num + ", o_fk_p_num=" + o_fk_p_num + ", o_fk_m_id=" + o_fk_m_id
				+ ", o_memo=" + o_memo + ", o_regdate=" + o_regdate + ", o_delivery=" + o_delivery + ", o_size="
				+ o_size + ", o_color=" + o_color + ", o_cnt=" + o_cnt + ", sizes=" + Arrays.toString(sizes)
				+ ", colors=" + Arrays.toString(colors) + ", cnts=" + Arrays.toString(cnts) + "]";
	}
	
	

}
