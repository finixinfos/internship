package com.infobay.manager.impl;


import com.infobay.bean.InternBean;
import com.infobay.dao.IInternDao;
import com.infobay.dao.impl.InternDaoImpl;
import com.infobay.manager.IInternManager;

public class InternManagerImpl implements IInternManager{

	IInternDao internDaoImpl=new InternDaoImpl();
	
	@Override
	public InternBean getInternProfileDetails(int internId) throws Exception {
		InternBean internBean = new InternBean();
		try {
			internBean = internDaoImpl.getInternProfileDetails(internId);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return internBean;
	}
	
	
	
	
	
}
