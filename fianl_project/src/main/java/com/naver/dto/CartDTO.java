package com.naver.dto;

import java.io.Serializable;
import java.util.Arrays;

public class CartDTO implements Serializable {

   private static final long serialVersionUID = 1L;

//   CREATE TABLE tbl_cart(
//         cart_num number(3) primary key,
//         cart_fk_m_id varchar2(15), 
//         cart_fk_p_num number(5),
//         cart_cnts number(3),
//         cart_sizes varchar2(15),
//         cart_colors varchar2(15),
//         constraint cart_fk_m_id foreign key(cart_fk_m_id) 
//         references tbl_member(m_id) on delete cascade,
//         constraint cart_fk_p_num foreign key(cart_fk_p_num) 
//         references tbl_product(p_num) on delete cascade
//         );
   private int cart_num;
   private String cart_fk_m_id;
   private int cart_fk_p_num;
   private int[] cnts; // 수량?
   private String[] sizes;
   private String[] colors;
   private int cart_cnt;
   private String cart_size;
   private String cart_color;
   

   public CartDTO() {
      // TODO Auto-generated constructor stub
   }


public CartDTO(int cart_num, String cart_fk_m_id, int cart_fk_p_num, int[] cnts, String[] sizes, String[] colors,
		int cart_cnt, String cart_size, String cart_color) {
	super();
	this.cart_num = cart_num;
	this.cart_fk_m_id = cart_fk_m_id;
	this.cart_fk_p_num = cart_fk_p_num;
	this.cnts = cnts;
	this.sizes = sizes;
	this.colors = colors;
	this.cart_cnt = cart_cnt;
	this.cart_size = cart_size;
	this.cart_color = cart_color;
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


public int[] getCnts() {
	return cnts;
}


public void setCnts(int[] cnts) {
	this.cnts = cnts;
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


public String getCart_color() {
	return cart_color;
}


public void setCart_color(String cart_color) {
	this.cart_color = cart_color;
}


public static long getSerialversionuid() {
	return serialVersionUID;
}


@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + cart_num;
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
	CartDTO other = (CartDTO) obj;
	if (cart_num != other.cart_num)
		return false;
	return true;
}


@Override
public String toString() {
	return "CartDTO [cart_num=" + cart_num + ", cart_fk_m_id=" + cart_fk_m_id + ", cart_fk_p_num=" + cart_fk_p_num
			+ ", cnts=" + Arrays.toString(cnts) + ", sizes=" + Arrays.toString(sizes) + ", colors="
			+ Arrays.toString(colors) + ", cart_cnt=" + cart_cnt + ", cart_size=" + cart_size + ", cart_color="
			+ cart_color + "]";
}

 

   

}