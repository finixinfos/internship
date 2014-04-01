package com.infobay.dao;

import java.util.Map;

import com.infobay.bean.LoginBean;

public interface ILoginDao {

	public Map login(LoginBean loginBean) throws Exception;
	
}
