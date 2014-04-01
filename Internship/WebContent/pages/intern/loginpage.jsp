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
<s:form id="formid" theme="simple" action="Login">
<center><h2>Login</h2>
<table border="0">

<tr>
<td>Email:</td>
<td><s:textfield name="loginBean.email" cssClass="txt validate[required]"/></td>
</tr>
<tr>
<td>Password:</td>
<td><s:password name="loginBean.password" cssClass="txt validate[required]"/></td>
<td><a href="forgotpassword.jsp">ForgotPassword</a> </td>
</tr>
<tr>
<td></td>
<td><s:checkbox	name="name"  />Keep me logged in </td>
</tr>
<tr>
<td></td>
<td><s:submit value="Login"/></td>
</tr>
</table>
<table>
<tr>
<td><a href="selectRegistrationtype.jsp">Student Registration</a></td>
<td><a href="empolyer_registration.jsp">Company Registration</a></td>
</tr>
</table>
</center>
</s:form>
</body>
</html>