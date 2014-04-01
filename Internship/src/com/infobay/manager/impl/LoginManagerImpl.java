package com.infobay.manager.impl;

import java.util.HashMap;
import java.util.Map;

import com.infobay.bean.CompanyBean;
import com.infobay.bean.InternBean;
import com.infobay.bean.LoginBean;
import com.infobay.dao.ILoginDao;
import com.infobay.dao.impl.LoginDaoImpl;
import com.infobay.manager.ICompanyManager;
import com.infobay.manager.IInternManager;
import com.infobay.manager.ILoginManager;

public class LoginManagerImpl implements ILoginManager {

	ILoginDao loginDaoImpl=new LoginDaoImpl();
	ICompanyManager companyManagerImpl=new CompanyManagerImpl();
	IInternManager internManagerImpl=new InternManagerImpl();
	
	@Override
	public Map<String, Object>  login(LoginBean loginBean) throws Exception {
		
		Map<String, Object>  profileMap=new HashMap<String, Object> ();
		try {
			
			profileMap=loginDaoImpl.login(loginBean);
			if(profileMap.get("status").equals("success")){
				LoginBean lBean=(LoginBean)profileMap.get("loginBean");
				if(lBean.getRoll_xid()== 2 && lBean.getCompany_xid() != 0){
					CompanyBean companyBean=companyManagerImpl.getCompanyProfileDetails(lBean.getCompany_xid());
					if(companyBean != null){
						profileMap.put("user", "company");
						profileMap.put("companyBean", companyBean);
					}
				}else if(lBean.getRoll_xid()== 3 && lBean.getStudent_xid() != 0){
					InternBean internBean=internManagerImpl.getInternProfileDetails(lBean.getStudent_xid());
					
				}
			}

			
		} catch (Exception e) {
			
		}
		return profileMap;
	}

}
