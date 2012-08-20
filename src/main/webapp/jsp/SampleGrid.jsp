<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
<title>Author - Sunil Prakash</title>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.0.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		//
	});
</script>
</head>

<body>
	
	emp1:${model }
		<table>
		
<s:iterator value="model.employees" var="employee">

				<tr>
					<td>${employee.id }</td>
					<td>${employee.name }</td>
				</tr>


</s:iterator>

		
		</table>
<s:form action="SampleGrid">
		<s:submit />
	</s:form>
</body>
</html>
