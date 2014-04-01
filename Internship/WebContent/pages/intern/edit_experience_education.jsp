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
<script type="text/javascript">
$(document).ready(function(){
$("#workExperienceId").on('change',function(){
var workExperience=$("#workExperienceId").val();
alert(workExperience);
if(workExperience.match("No Experience"))
$(".internshipclass").css("display","none");
else
$(".internshipclass").css("display","block");
});


$("#dualDegreeId").on('change',function(){
if($('#dualDegreeId').is(":checked"))
{
$('#secondDegreeid').val('Please Select Degree');
$('#secondBranchDiv').empty();
$(".dualdegreediv").css("display","block");
$(".secondBranchDiv").css("display","block");
}
else
{
$(".dualdegreediv").css("display","none");
$(".secondBranchDiv").css("display","none");
}
});


$("#degreeid").on('change',function(){
	var degreeid=$("#degreeid").val();
	alert(degreeid);
	jQuery.ajax({
	data	:	"degreeid=" +degreeid,
	url		:	"getBranch.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		$("#branchDiv").html(results);
	}
	})
});


$("#secondDegreeid").on('change',function(){
	var secondDegreeid=$("#secondDegreeid").val();
	alert(secondDegreeid);
	jQuery.ajax({
	data	:	"secondDegreeid=" +secondDegreeid,
	url		:	"getSecondBranch.action",
	type	:	"POST",
	success:function(results){
		alert(results);
		$(".secondBranchLabel").css("display","block");
		$("#secondBranchDiv").html(results);
	}
	})
});
});
</script>
</head>
<body>
<s:form id="formid" theme="simple" enctype="multipart/form-data">
	<h3>EXPERIENCE/EDUCATION</h3>
	<hr>
	<table border="0">
		<tr>
			<td>Work Experience:</td>
			<td><s:select id="workExperienceId"
				list="{'No Experience','<2 years','>2 years'}" name="internBean.work_experience" value=""
				headerKey="" headerValue="Please Select Experiance"
				cssClass="validate[required]" /></td>
		</tr>
		<tr>
			<td>
			<div class="internshipclass">Job / Internship Title:</div>
			</td>
			<td>
			<div class="internshipclass"><s:textfield name="internBean.worked_job_title"
				maxlength="255" cssClass="txt validate[required]" /></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="internshipclass">Job / Internship Category:</div>
			</td>
			<td>
			<div class="internshipclass"><s:textfield name="internBean.worked_job_category"
				maxlength="255" cssClass="txt validate[required]" /></div>
			</td>
		</tr>
		<tr>
			<td>College/University:</td>
			<td><s:textfield name="internBean.college_name" maxlength="255" cssClass="txt validate[required]" /></td>
		</tr>
		<tr>
			<td>Degree:</td>
			<td><s:select list="{'BE','B.Tech','MCA'}" name="internBean.degreeId" value="internBean.degreeId"
				headerKey="" headerValue="Please Select Degree" cssClass="validate[required]" id="degreeid" />
				<s:checkbox	name="name" id="dualDegreeId" />Dual Degree</td>
		</tr>
		<tr>
			<td>Branch:</td>
			<td><div id="branchDiv"><s:select list="{'IT','CSE','ECE'}" name="internBean.branchId" value="internBean.branchId"
				headerKey="" headerValue="Please Select Branch" cssClass="validate[required]" /></div></td>
		</tr>
		<tr>
			<td>Year Of Passout:</td>
			<td><s:select list="{'2000','2001','2002'}" name="internBean.year_of_passedout" value="internBean.year_of_passedout"
				headerKey="" headerValue="Please Select Year" cssClass="validate[required]" /></td>
		</tr>
		<tr>
			<td><div class="dualdegreediv" style="display: none;">College/University:</div></td>
			<td><div class="dualdegreediv" style="display: none;"><s:textfield name="internBean.second_college_name" maxlength="255" cssClass="txt validate[required]" /></div></td>
		</tr>
		<tr>
			<td>
			<div class="dualdegreediv" style="display: none;">Second
			Degree:</div>
			</td>
			<td>
			<div class="dualdegreediv" style="display: none;"><s:select
				list="#{'1':'BE/B.Tech','2':'BA'}" name="internBean.second_degreeId"
				headerKey="2" headerValue="Please Select Degree" id="secondDegreeid"
				cssClass="validate[required]" /></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="secondBranchLabel" style="display: none;">Second Branch:</div>
			</td>
			<td>
			<div class="secondBranchDiv" style="display: none;"
				id="secondBranchDiv"></div>

			</td>
		</tr>
		<tr>
			<td><div class="dualdegreediv" style="display: none;">Year Of Passout:</div></td>
			<td><div class="dualdegreediv" style="display: none;"><s:select list="{'2000','2001','2002'}" name="internBean.second_year_passedout" value="internBean.second_year_passedout"
				headerKey="" headerValue="Please Select Year" cssClass="validate[required]" /></div></td>
		</tr>
		<tr>
		<td>Upload Resume:</td>
		<td><s:file name="internBean.resume" cssClass="validate[required]"/></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit value="Save" /></td>
		</tr>
	</table>
</s:form>
</body>
</html>