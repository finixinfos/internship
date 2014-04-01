package com.infobay.manager;

import com.infobay.bean.CompanyBean;

public interface ICompanyManager {
	
	public CompanyBean getCompanyProfileDetails(int companyId) throws Exception;


}
