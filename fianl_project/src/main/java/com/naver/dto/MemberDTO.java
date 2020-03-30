package com.naver.dto;

public class MemberDTO {

	private String m_id;
	private String m_password;
	private String m_name;
	private String m_birth;
	private String m_email;
	private String m_ph;
	private String m_gender;
	private String m_oaddress;
	private String m_address;
	private String m_detailaddress;
	private int m_point;
	private int m_admin;
	private int m_rating;

	// private String mem_emailchk;
	// private String mem_address;

	public String getM_oaddress() {
		return m_oaddress;
	}
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "MemberDTO [m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name + ", m_birth=" + m_birth
				+ ", m_email=" + m_email + ", m_ph=" + m_ph + ", m_gender=" + m_gender + ", m_oaddress=" + m_oaddress
				+ ", m_address=" + m_address + ", m_detailaddress=" + m_detailaddress + ", m_point=" + m_point
				+ ", m_admin=" + m_admin + ", m_rating=" + m_rating + "]";
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
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

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
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

	public int getM_point() {
		return m_point;
	}

	public void setM_point(int m_point) {
		this.m_point = m_point;
	}

	public int getM_admin() {
		return m_admin;
	}

	public void setM_admin(int m_admin) {
		this.m_admin = m_admin;
	}

	public int getM_rating() {
		return m_rating;
	}

	public void setM_rating(int m_rating) {
		this.m_rating = m_rating;
	}

	public void setM_oaddress(String m_oaddress) {
		this.m_oaddress = m_oaddress;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((m_address == null) ? 0 : m_address.hashCode());
		result = prime * result + m_admin;
		result = prime * result + ((m_birth == null) ? 0 : m_birth.hashCode());
		result = prime * result + ((m_detailaddress == null) ? 0 : m_detailaddress.hashCode());
		result = prime * result + ((m_email == null) ? 0 : m_email.hashCode());
		result = prime * result + ((m_gender == null) ? 0 : m_gender.hashCode());
		result = prime * result + ((m_id == null) ? 0 : m_id.hashCode());
		result = prime * result + ((m_name == null) ? 0 : m_name.hashCode());
		result = prime * result + ((m_oaddress == null) ? 0 : m_oaddress.hashCode());
		result = prime * result + ((m_password == null) ? 0 : m_password.hashCode());
		result = prime * result + ((m_ph == null) ? 0 : m_ph.hashCode());
		result = prime * result + m_point;
		result = prime * result + m_rating;
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
		MemberDTO other = (MemberDTO) obj;
		if (m_address == null) {
			if (other.m_address != null)
				return false;
		} else if (!m_address.equals(other.m_address))
			return false;
		if (m_admin != other.m_admin)
			return false;
		if (m_birth == null) {
			if (other.m_birth != null)
				return false;
		} else if (!m_birth.equals(other.m_birth))
			return false;
		if (m_detailaddress == null) {
			if (other.m_detailaddress != null)
				return false;
		} else if (!m_detailaddress.equals(other.m_detailaddress))
			return false;
		if (m_email == null) {
			if (other.m_email != null)
				return false;
		} else if (!m_email.equals(other.m_email))
			return false;
		if (m_gender == null) {
			if (other.m_gender != null)
				return false;
		} else if (!m_gender.equals(other.m_gender))
			return false;
		if (m_id == null) {
			if (other.m_id != null)
				return false;
		} else if (!m_id.equals(other.m_id))
			return false;
		if (m_name == null) {
			if (other.m_name != null)
				return false;
		} else if (!m_name.equals(other.m_name))
			return false;
		if (m_oaddress == null) {
			if (other.m_oaddress != null)
				return false;
		} else if (!m_oaddress.equals(other.m_oaddress))
			return false;
		if (m_password == null) {
			if (other.m_password != null)
				return false;
		} else if (!m_password.equals(other.m_password))
			return false;
		if (m_ph == null) {
			if (other.m_ph != null)
				return false;
		} else if (!m_ph.equals(other.m_ph))
			return false;
		if (m_point != other.m_point)
			return false;
		if (m_rating != other.m_rating)
			return false;
		return true;
	}

	public MemberDTO(String m_id, String m_password, String m_name, String m_birth, String m_email, String m_ph,
			String m_gender, String m_oaddress, String m_address, String m_detailaddress, int m_point, int m_admin,
			int m_rating) {
		super();
		this.m_id = m_id;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_email = m_email;
		this.m_ph = m_ph;
		this.m_gender = m_gender;
		this.m_oaddress = m_oaddress;
		this.m_address = m_address;
		this.m_detailaddress = m_detailaddress;
		this.m_point = m_point;
		this.m_admin = m_admin;
		this.m_rating = m_rating;
	}

}