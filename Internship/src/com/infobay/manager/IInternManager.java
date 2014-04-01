package com.infobay.manager;

import com.infobay.bean.InternBean;

public interface IInternManager {
	
	
	public InternBean getInternProfileDetails(int internId) throws Exception;
}
