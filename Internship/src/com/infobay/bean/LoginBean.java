package com.infobay.bean;

public class LoginBean {
	private String email;
	private String password;
	private int roll_xid;
	private int company_xid;
	private int student_xid;
	private InternBean internBean;
	private CompanyBean companyBean;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRoll_xid() {
		return roll_xid;
	}

	public void setRoll_xid(int roll_xid) {
		this.roll_xid = roll_xid;
	}

	public int getCompany_xid() {
		return company_xid;
	}

	public void setCompany_xid(int company_xid) {
		this.company_xid = company_xid;
	}

	public int getStudent_xid() {
		return student_xid;
	}

	public void setStudent_xid(int student_xid) {
		this.student_xid = student_xid;
	}

	public InternBean getInternBean() {
		return internBean;
	}

	public void setInternBean(InternBean internBean) {
		this.internBean = internBean;
	}

	public CompanyBean getCompanyBean() {
		return companyBean;
	}

	public void setCompanyBean(CompanyBean companyBean) {
		this.companyBean = companyBean;
	}

}
