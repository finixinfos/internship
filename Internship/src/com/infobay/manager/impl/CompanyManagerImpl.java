package com.infobay.manager.impl;

import com.infobay.bean.CompanyBean;
import com.infobay.dao.ICompanyDao;
import com.infobay.dao.impl.CompanyDaoImpl;
import com.infobay.manager.ICompanyManager;

public class CompanyManagerImpl implements ICompanyManager {

	ICompanyDao companyDaoImpl = new CompanyDaoImpl();

	@Override
	public CompanyBean getCompanyProfileDetails(int companyId) throws Exception {
		CompanyBean companyBean = new CompanyBean();
		try {
			companyBean = companyDaoImpl.getCompanyProfileDetails(companyId);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return companyBean;
	}

}
