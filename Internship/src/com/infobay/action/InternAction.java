package com.infobay.action;


import com.infobay.bean.InternBean;
import com.infobay.manager.IInternManager;
import com.infobay.manager.impl.InternManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

public class InternAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

//bean obj create
	InternBean internBean=new InternBean();
	IInternManager internManagerImpl=new InternManagerImpl();
	
	
//loadInternRegistration
	public String loadInternRegistration()
	{
	
		return SUCCESS;
	}
}
