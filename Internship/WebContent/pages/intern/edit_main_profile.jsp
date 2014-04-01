<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/validationEngine.jquery.css"
	type="text/css" />
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
			
				$("#formid").validationEngine();
					
			});
</script>
</head>
<body>
<s:form id="formid" theme="simple">
<h3>MAIN PROFILE</h3>
<hr>
	<table border="0">
		<tr>
			<td>Name:</td>
			<td><s:textfield name="internBean.firstName" maxlength="255" cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><s:textfield name="internBean.lastName" maxlength="255" cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td><s:textfield name="internBean.email" maxlength="255" cssClass="txt validate[required,custom[email]]"/></td>
		</tr>
		<tr>
			<td>Mobile:</td>
			<td><s:textfield name="internBean.mobile_number" maxlength="255" cssClass="txt validate[required,custom[phone]]"/></td>
		</tr>
		<tr>
			<td>Country:</td>
			<td><s:select list="{'india','usa','uk'}" name="internBean.countryId" value="internBean.countryId" headerKey="" headerValue="Please Select Country" cssClass="validate[required]"/></td>
		</tr>
		<tr>
			<td>State/Region:</td>
			<td><s:select list="{'tamilnadu','kerala','andra','karnataka'}" name="internBean.stateId" value="internBean.stateId" headerKey="" headerValue="Please Select State/Region" cssClass="validate[required]"/></td>
		</tr>
		<tr>
			<td>City:</td>
			<td><s:select list="{'chennai','madurai','namakkal','salem'}" name="internBean.cityId" value="internBean.cityId" headerKey="" headerValue="Please Select State/Region" cssClass="validate[required]"/></td>
		</tr>
		<tr>
		<td></td>
		<td><s:submit value="Save"/></td>
		</tr>
</table>
</s:form>
</body>
</html>