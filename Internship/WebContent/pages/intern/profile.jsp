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
<table border="0" cellpadding="0" cellspacing="0">
	<tr>
		<h3>PROFILE DETAILS</h3>
	</tr>
	<tr>
		<td>
		<hr>
		MAIN PROFILE
		<hr>
		</td>
		<td align="right"><a href="edit_main_profile.jsp">
		<hr>
		change</a>
		<hr></td>
	</tr>
	<tr>
		<td>First Name:</td>
		<td><s:property value="internBean.firstName"/></td>
	</tr>
	<tr>
		<td>Last Name:</td>
		<td><s:property value="internBean.lastName"/></td>
	</tr>
	<tr>
		<td>E-Mail:</td>
		<td><s:property value="internBean.email"/></td>
	</tr>
	<tr>
		<td>Mobile:</td>
		<td><s:property value="internBean.mobile_number"/></td>
	</tr>
	

	<tr>
		<td>
		<hr>
		EXPERIENCE/EDUCATION
		<hr>
		</td>
		<td align="right"><a href="edit_experience_education.jsp">
		<hr>
		change</a>
		<hr></td>
	</tr>
	<tr>

		<td>Work Experience:</td>
		<td><s:property value="internBean.work_experience"/></td>
	</tr>
	
	<tr>
		<td>College/University:</td>
		<td><s:property value="internBean.college_name"/></td>
	</tr>
	<tr>
		<td>Degree:</td>
		<td><s:property value="internBean.degreeId"/></td>
	</tr>
	<tr>
		<td>Branch:</td>
		<td><s:property value="internBean.branchId"/></td>
	</tr>
	<tr>
		<td>Year of Passout:</td>
		<td><s:property value="internBean.year_of_passedout"/></td>
	</tr>
	<tr>
		<td>Second College/University:</td>
		<td><s:property value="internBean.second_college_name"/></td>
	</tr>
	<tr>
		<td>Second Degree:</td>
		<td><s:property value="internBean.second_degreeId"/></td>
	</tr>
	<tr>
		<td>Second Branch:</td>
		<td><s:property value="internBean.second_branchId"/></td>
	</tr>
	<tr>
		<td>Second Year of Passout:</td>
		<td><s:property value="internBean.second_year_of_passedout"/></td>
	</tr>
	
	<tr>
		<td>Resume:</td>
		<td><s:property value="internBean.resume"/></td>
	</tr>
	<tr>
		<td>
		<hr>
		DESIRED EMPLOYMENT
		<hr>
		</td>
		<td align="right"><a href="edit_desired_employment.jsp">
		<hr>
		change</a>
		<hr></td>
	</tr>
	<tr>
		<td>Profile Summary:</td>
		<td><s:property value="internBean.profile_summary"/></td>
	</tr>
	<tr>
		<td>Desired Internship Category:</td>
		<td><s:property value="internBean.job_category"/></td>
	</tr>
	<tr>
		<td>Position Type:
		<td><s:property value="internBean.position_type"/></td>
	</tr>
	<tr>
		<td>Location:</td>
		<td><s:property value="internBean.desired_location"/></td>
	</tr>
	<tr>
		<td>Availability</td>
		<td></td>
	</tr>
	<tr>
		<td>Start Date:</td>
		<td><s:property value="internBean.start_date"/></td>
	</tr>
	<tr>
		<td>End Date:</td>
		<td><s:property value="internBean.end_date"/></td>
	</tr>
	<tr>
		<td>
		<hr>
		PERSONAl INFRORMATION
		<hr>
		</td>
		<td align="right"><a href="edit_personal_information.jsp" >
		<hr>
		change</a>
		<hr></td>
	</tr>
	<tr>
		<td>Known Language:</td>
		<td><s:property value="internBean.known_language"/></td>
	</tr>
	<tr>
		<td>Birth Date:</td>
		<td><s:property value="internBean.date_of_birth"/></td>
	</tr>
	<tr>
		<td>Your Photo:</td>
		<td><img src="" height="100" width="100"/> </td>
	</tr>
</table>
</body>
</html>