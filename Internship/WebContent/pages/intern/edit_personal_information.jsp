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
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
			
				$("#formid").validationEngine();
					
			});
</script>
<script>
$(function() {
$( "#datepicker" ).datepicker({ 
changeMonth:true,
    changeYear:true,
displayFormat:"dd-mm-yyyy",
});
});
</script>

</head>
<body>
<s:form id="formid" enctype="multipart/form-data">
	<h3>PERSONAL INFORMATION</h3>
	<hr>
	<table border="0">
		<tr>
			<td>Gender:</td>
			<td><s:radio list="{'Male','Female','Decline To Identify'}"
				name="internBean.gender" value="male" cssClass="radio validate[required]"></s:radio></td>
		</tr>
		<tr>
			<td>Known Languages :</td>
			<td><s:textfield name="internBean.known_language" maxlength="255" cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>Birth date:</td>
			<td><s:textfield name="internBean.date_of_birth" id="datepicker" cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td></td>
			<td><s:file name="internBean.profile_picture" cssClass="validate[required]"/></td>
		</tr>
		<tr>
		<td></td>
		<td>Note: Maximum file size 500k</td>
		</tr>
		<tr>
			<td>Our photo:</td>
			<td><img
				src="images/Penguins.jpg"
				width="100" height="100"></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Save" /></td>
		</tr>
	</table>
</s:form>
</body>
</html>