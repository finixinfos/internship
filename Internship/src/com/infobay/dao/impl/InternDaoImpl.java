package com.infobay.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.log4j.Logger;

import com.infobay.bean.InternBean;
import com.infobay.dao.IInternDao;
import com.infobay.dao.util.ConnectionManager;
//import java.sql.Statement;

public class InternDaoImpl implements IInternDao {

	private static final Logger logger = Logger.getLogger(InternDaoImpl.class);
	private static ConnectionManager connectionManager = ConnectionManager
			.getConnectionManager();

	@Override
	public InternBean getInternProfileDetails(int internId) throws Exception {

		if (logger.isDebugEnabled()) {
			logger.debug(" getInternProfileDetails(int internId)");
		}
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		InternBean internBean = new InternBean();

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
			logger.debug("Exit from method: getInternProfileDetails()");
		}

		return internBean;

	}
	
	
	
}
