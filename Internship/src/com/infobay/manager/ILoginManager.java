package com.infobay.manager;

import java.util.Map;

import com.infobay.bean.LoginBean;

public interface ILoginManager {
	
	public Map<String, Object>  login(LoginBean loginBean) throws Exception;

}
