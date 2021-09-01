package com.invi.domain;

public class MemberVO {
	// id
	private String join_id;
	// pw
	private String join_pw1;
	// check pw (위의 패쓰워드 확인)
	private String join_pw2;
	// name
	private String join_name;
	// year
	private int birth_year;
	// month
	private int birth_month;
	// days
	private int birth_day;
	// gender
	private String gender;
	
	public String getJoin_id() {
		return join_id;
	}
	public void setJoin_id(String join_id) {
		this.join_id = join_id;
	}
	public String getJoin_pw1() {
		return join_pw1;
	}
	public void setJoin_pw1(String join_pw1) {
		this.join_pw1 = join_pw1;
	}
	public String getJoin_pw2() {
		return join_pw2;
	}
	public void setJoin_pw2(String join_pw2) {
		this.join_pw2 = join_pw2;
	}
	public String getJoin_name() {
		return join_name;
	}
	public void setJoin_name(String join_name) {
		this.join_name = join_name;
	}
	public int getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(int birth_year) {
		this.birth_year = birth_year;
	}
	public int getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(int birth_month) {
		this.birth_month = birth_month;
	}
	public int getBirth_day() {
		return birth_day;
	}
	public void setBirth_day(int birth_day) {
		this.birth_day = birth_day;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "MemberVO [join_id=" + join_id + ", join_pw1=" + join_pw1 + ", join_pw2=" + join_pw2 + ", join_name="
				+ join_name + ", birth_year=" + birth_year + ", birth_month=" + birth_month + ", birth_day=" + birth_day
				+ ", gender=" + gender + "]";
	}
	

	
	
}
