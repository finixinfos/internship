<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><td>City:</td><td>
<s:select list="#{'1':'India','2':'USA'}" id="cityid" name="internBean.cityId" headerKey="" headerValue="Please Select City" cssClass="validate[required]"/>
</td></tr>
</table>
</body>
</html>