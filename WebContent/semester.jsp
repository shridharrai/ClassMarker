<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="cm" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Semester</title>
<link href="css/bootstrap.min.css" rel ="stylesheet">
<script>
window.addEventListener("load", init);
function init() {
	let message = document.getElementById('alert');
	console.log("Message is ",message.innerText);
	if (message.innerText == "Added") {
		message.innerText = " ";
		alert("Semester Added....");
	}
}
</script>
</head>
<body>
<cm:header rolename='<s:property value="rolename"/>' userid='<s:property value="userid" />' rights='<s:property value="rights"/>' ></cm:header>
<div class='w-100 float-right pr-2'>
    <h6 id="alert" class="text-center"><s:property value="message"/></h6>
	<h1 class="h2">Semester</h1>	<hr>
 <h5>Add Semester</h5>
<s:form action="addsem" method="post">
	<s:textfield type="text" name="semestername" 
	cssClass="form-group form-control" label="Semester Name" 
	placeholder="Enter Semester Name"/>
	<s:textfield type="text" name="semesterdesc" 
	cssClass="form-group form-control" label="Semester Description" 
	placeholder="Enter Semester Description"/>
	<s:submit cssClass="form-group btn btn-primary mx-5"/>
</s:form>

<s:form name="showsemester" action="showsemester">
                <s:submit value="Fetch Records"/>
</s:form>

<table class="table table-bordered">
	<thead class="thead-dark">
		<tr>
			<th>Semester Name</th>
			<th>Semester Description</th>
		</tr>
	</thead>
	<s:iterator value="semesterlist">
	<tr>
			<td><s:property value="semestername"/></td>
			<td><s:property value="semesterdesc"/></td>
	<tr>
	</s:iterator>
</table>
</div>
<cm:footer></cm:footer>
</body>
</html>