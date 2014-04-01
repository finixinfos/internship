package com.infobay.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.infobay.bean.CompanyBean;
import com.infobay.dao.ICompanyDao;
import com.infobay.dao.util.ConnectionManager;

//import java.sql.Statement;

public class CompanyDaoImpl implements ICompanyDao {

	private static final Logger logger = Logger.getLogger(CompanyDaoImpl.class);
	private static ConnectionManager connectionManager = ConnectionManager
			.getConnectionManager();

	@Override
	public CompanyBean getCompanyProfileDetails(int companId) throws Exception {

		if (logger.isDebugEnabled()) {
			logger.debug(" getCompanyProfileDetails(int companId)");
		}
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		CompanyBean companyBean = new CompanyBean();

		try {
			conn = connectionManager.getConnection();
			String query = "";
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while (rs.next()) {}
			

			conn.close();

		} catch (Exception ex) {

		} finally {
			if (conn != null) {
				connectionManager.releaseConnection(conn);
			}
		}
		if (logger.isDebugEnabled()) {
			logger.debug("Exit from method: getCompanyProfileDetails()");
		}

		return companyBean;

	}

}
