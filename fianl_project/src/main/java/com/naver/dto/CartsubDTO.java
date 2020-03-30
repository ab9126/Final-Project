package com.naver.dto;

import java.io.Serializable;

public class CartsubDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private String m_id;
	private String m_name;
	private int m_point;
	private int cart_num;
	private String cart_fk_m_id;
	private int cart_fk_p_num;
	private int cart_cnt;
	private String cart_color;
	private String cart_size;
	private int p_num;
	private int p_price;
	private String p_color;
	private String p_size;
	private String p_thumb;
	private String p_fk_m_id;
	private String p_title;
	private int[] cnts;
	private String[] colors;
	private String[] sizes;
	
	
	
	public CartsubDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public CartsubDTO(String m_id, String m_name, int m_point, int cart_num, String cart_fk_m_id, int cart_fk_p_num,
			int cart_cnt, String cart_size, int p_num, int p_price, String p_color, String p_size, String p_thumb,
			String p_fk_m_id, String p_title) {
		super();
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_point = m_point;
		this.cart_num = cart_num;
		this.cart_fk_m_id = cart_fk_m_id;
		this.cart_fk_p_num = cart_fk_p_num;
		this.cart_cnt = cart_cnt;
		this.cart_size = cart_size;
		this.p_num = p_num;
		this.p_price = p_price;
		this.p_color = p_color;
		this.p_size = p_size;
		this.p_thumb = p_thumb;
		this.p_fk_m_id = p_fk_m_id;
		this.p_title = p_title;
	}
	
	
	
	public int[] getCnts() {
		return cnts;
	}

	public void setCnts(int[] cnts) {
		this.cnts = cnts;
	}

	public String[] getColors() {
		return colors;
	}

	public void setColors(String[] colors) {
		this.colors = colors;
	}

	public String[] getSizes() {
		return sizes;
	}

	public void setSizes(String[] sizes) {
		this.sizes = sizes;
	}

	public String getCart_color() {
		return cart_color;
	}

	public void setCart_color(String cart_color) {
		this.cart_color = cart_color;
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

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	public int getCart_num() {
		return cart_num;
	}

	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}

	public String getCart_fk_m_id() {
		return cart_fk_m_id;
	}

	public void setCart_fk_m_id(String cart_fk_m_id) {
		this.cart_fk_m_id = cart_fk_m_id;
	}

	public int getCart_fk_p_num() {
		return cart_fk_p_num;
	}

	public void setCart_fk_p_num(int cart_fk_p_num) {
		this.cart_fk_p_num = cart_fk_p_num;
	}

	public int getCart_cnt() {
		return cart_cnt;
	}

	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}

	public String getCart_size() {
		return cart_size;
	}

	public void setCart_size(String cart_size) {
		this.cart_size = cart_size;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_color() {
		return p_color;
	}

	public void setP_color(String p_color) {
		this.p_color = p_color;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
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

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CartsubDTO [m_id=" + m_id + ", m_name=" + m_name + ", m_point=" + m_point + ", cart_num=" + cart_num
				+ ", cart_fk_m_id=" + cart_fk_m_id + ", cart_fk_p_num=" + cart_fk_p_num + ", cart_cnt=" + cart_cnt
				+ ", cart_size=" + cart_size + ", p_num=" + p_num + ", p_price=" + p_price + ", p_color=" + p_color
				+ ", p_size=" + p_size + ", p_thumb=" + p_thumb + ", p_fk_m_id=" + p_fk_m_id + ", p_title=" + p_title
				+ "]";
	}
	
}
