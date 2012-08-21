<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<html>
<head>
<title>Author - Sunil Prakash</title>
<sj:head jqueryui="true" jquerytheme="redmond" />



<script type="text/javascript">
	$(document).ready(function() {
		//
	});
</script>

<style type="text/css">
table.its {
width: 350px;
}

table.its thead a{
text-decoration: none;
}

table.its thead tr {
	background-color: #69c;
	color: #fff;
}

table.its tr.even {
	background-color: #def;
}

.container{
margin:40px 0px; 
position: relative; 
left: 40%;
}

.header {
font-weight:bold;
color:#fff;
text-shadow:orange;
padding-top:5px;
padding-bottom:5px;
text-align:center;
width:100%;
display:block;
height:30px;
background-image: linear-gradient(bottom, #142A42 16%, #2DD641 100%, #74D69E 100%);
background-image: -o-linear-gradient(bottom, #142A42 16%, #2DD641 100%, #74D69E 100%);
background-image: -moz-linear-gradient(bottom, #142A42 16%, #2DD641 100%, #74D69E 100%);
background-image: -webkit-linear-gradient(bottom, #142A42 16%, #2DD641 100%, #74D69E 100%);
background-image: -ms-linear-gradient(bottom, #142A42 16%, #2DD641 100%, #74D69E 100%);

background-image: -webkit-gradient(
	linear,
	left bottom,
	left top,
	color-stop(0.16, #142A42),
	color-stop(1, #2DD641),
	color-stop(1, #74D69E)
);


}
</style>
</head>

<body>

<div class="header">DisplayTag</div>
<div class="container">	
	 <display:table id="employeeList" name="modelList" requestURI="Sample" pagesize="10" defaultsort="1" class="its" >
        <display:column property="id" title="ID" sortable="true" headerClass="sortable" />
        <display:column property="name" title="Name" sortable="true" headerClass="sortable"/>
     
     </display:table>
 </div>    

<div class="header">Struts2jqueryGrid</div>
<div class="container">
<s:url var="remoteurl" action="SampleGrid"/>
    <sjg:grid
        id="gridtable"
        caption="Employee Records"
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
</div>		
		
<s:form action="Sample">
		<s:submit cssClass="header" />
	</s:form>
</body>
</html>
