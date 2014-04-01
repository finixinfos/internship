package com.infobay.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.infobay.bean.LoginBean;
import com.infobay.dao.ILoginDao;
import com.infobay.dao.util.ConnectionManager;

//import java.sql.Statement;

public class LoginDaoImpl implements ILoginDao {

	private static final Logger logger = Logger.getLogger(LoginDaoImpl.class);
	private static ConnectionManager connectionManager = ConnectionManager
			.getConnectionManager();

	@Override
	public Map<String, Object> login(LoginBean loginBean) throws Exception {

		if (logger.isDebugEnabled()) {
			logger.debug(" Login(LoginBean loginBean)");
		}
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Map<String, Object> profileMap = new HashMap<String, Object>();

		try {
			conn = connectionManager.getConnection();
			String query = "select * from login where email=? and password=?";
			ps = conn.prepareStatement(query);
			ps.setString(1, loginBean.getEmail());
			ps.setString(2, loginBean.getPassword());
			rs = ps.executeQuery();
			boolean flag = false;
			while (rs.next()) {
				flag = true;
				loginBean.setEmail(rs.getString("email"));
				loginBean.setPassword(rs.getString("password"));
				loginBean.setRoll_xid(rs.getInt("roll_xid"));
				loginBean.setCompany_xid(rs.getInt("company_xid"));
				loginBean.setStudent_xid(rs.getInt("student_xid"));

			}
			if (flag) {
				profileMap.put("status", "success");
				profileMap.put("loginBean", loginBean);
			} else {
				profileMap.put("status", "failure");
			}

			conn.close();

		} catch (Exception ex) {

		} finally {
			if (conn != null) {
				connectionManager.releaseConnection(conn);
			}
		}
		if (logger.isDebugEnabled()) {
			logger.debug("Exit from method: Login()");
		}

		return profileMap;

	}

}
