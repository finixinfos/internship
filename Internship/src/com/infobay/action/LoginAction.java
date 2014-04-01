package com.infobay.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.infobay.bean.CompanyBean;
import com.infobay.bean.InternBean;
import com.infobay.bean.LoginBean;
import com.infobay.manager.ILoginManager;
import com.infobay.manager.impl.LoginManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger logger = Logger.getLogger(LoginAction.class);

	ILoginManager loginManagerImpl = new LoginManagerImpl();
	private LoginBean loginBean = new LoginBean();
	CompanyBean companyBean = new CompanyBean();
	InternBean internBean = new InternBean();

	public CompanyBean getCompanyBean() {
		return companyBean;
	}

	public LoginBean getLoginBean() {
		return loginBean;
	}

	public void setLoginBean(LoginBean loginBean) {
		this.loginBean = loginBean;
	}

	public void setCompanyBean(CompanyBean companyBean) {
		this.companyBean = companyBean;
	}

	public InternBean getInternBean() {
		return internBean;
	}

	public void setInternBean(InternBean internBean) {
		this.internBean = internBean;
	}

	// InternShip Login
	public String Login() throws Exception {
		System.out.println("accessing");
		System.out.println(loginBean.getEmail());
		String status = ERROR;
		try {
			if (logger.isDebugEnabled()) {
				System.out.println(loginBean.getEmail());
				logger.debug("email =" + loginBean.getEmail() + " password ="
						+ loginBean.getPassword());
			}
			Map<String, Object> profileMap = new HashMap<String, Object>();
			profileMap = loginManagerImpl.login(loginBean);
			if (profileMap.get("status").equals("success")) {
				if (profileMap.get("user").equals("company")) {
					setCompanyBean((CompanyBean)profileMap.get("companyBean"));
					status="COMPANY";
				} else if (profileMap.get("user").equals("intern")) {
					setInternBean((InternBean)profileMap.get("internBean"));
					status="INERN";
				}
			}else{	
				status = ERROR;
			}
		} catch (Exception e) {
			logger.error("Login Error " + e.getMessage(), e);
		}

		return status;

	}

}
