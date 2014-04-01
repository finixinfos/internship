package com.infobay.dao;

import com.infobay.bean.CompanyBean;

public interface ICompanyDao {
	
	public CompanyBean getCompanyProfileDetails(int companyId) throws Exception;

}
