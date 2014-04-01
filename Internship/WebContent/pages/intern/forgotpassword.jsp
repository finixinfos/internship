<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery/jquery-1.9.1.js"></script>
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery/jquery.validationEngine.js"
	type="text/javascript" charset="utf-8"></script>
<script src="js/jquery/jquery.validationEngine-en.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#forgot_check").validationEngine();

});
</script>
</head>
<body>
<s:form action="" id="forgot_check">
<h3>FORGOT PASSWORD</h3>
<s:textfield name="companyBean.email" label="Email ID" cssClass="txt validate[required,custom[email]]"/>
<s:submit value="submit"></s:submit>
</s:form>
</body>
</html>