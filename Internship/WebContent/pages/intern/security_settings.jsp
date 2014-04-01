<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery.validationEngine.js"
	type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.validationEngine-en.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#formid").validationEngine();

});
</script>


</head>
<body>
<h3>SECURITY</h3>
<s:form action="" id="formid" theme="simple">
<table>
	<tr><td>Current Password:</td><td>
	<s:password name="internBean.password" cssClass="txt validate[required]" />
	</td><td>
	<a href="forgotpassword.jsp">Forgot Password</a></td></tr>
	<tr>
	<td>New Password:</td><td>
	<s:password name="internBean.password" id="password" cssClass="txt validate[required]" /></td>
	</tr>
	<tr>
	<td>Confirm New Password:</td><td>
	<s:password name="password" cssClass="txt validate[required,equals[password]" /></td>
		</tr>
		<tr><td></td><td>
	<s:submit value="Save Settings"></s:submit></td></tr>
	</table>
</s:form>

</body>
</html>