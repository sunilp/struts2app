<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<html>
<head>
<title>Author - Sunil Prakash</title>
<sj:head jqueryui="true" jquerytheme="redmond" />



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
		

<s:url var="remoteurl" action="SampleGrid"/>
    <sjg:grid
        id="gridtable"
        caption="Customer Examples"
        dataType="json"
        href="%{remoteurl}"
        pager="true"
        gridModel="modelList"
        rowList="10,15,20"
        rowNum="15"
        rownumbers="true"
    >
        <sjg:gridColumn name="id" index="id" title="ID" formatter="integer" sortable="false"/>
        <sjg:gridColumn name="name" index="name" title="Name" sortable="true"/>
       
    </sjg:grid>		
		
		
<s:form action="Sample">
		<s:submit />
	</s:form>
</body>
</html>
