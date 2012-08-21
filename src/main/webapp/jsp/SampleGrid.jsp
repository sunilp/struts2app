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
		   $(".slidingDiv").hide();
	        $(".show_hide").show();
	 
	    $('.show_hide').click(function(){
	    $(".slidingDiv").slideToggle();
	    });

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
-moz-border-radius: 5px;
border-radius: 5px;
-moz-box-shadow: 5px 5px 5px green;
-webkit-box-shadow: 5px 5px 5px green;
box-shadow: 5px 5px 5px green;
}

.slidingDiv {
    height:200px;
    background-color: #99CCFF;
    padding:20px;
    margin-top:10px;
    border-bottom:5px solid #3399FF;
    width: 400px;
    moz-box-shadow: 0 0 5px 5px #888;
-webkit-box-shadow: 0 0 5px 5px#888;
box-shadow: 0 0 5px 5px #888;
}
 
.show_hide {
    display:none;
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


<div class="header">Expanding Content</div>
<div class="container">
	
<a href="#" class="show_hide">Show/hide</a>
<div class="slidingDiv">
	 <display:table id="employeeList" name="modelList" requestURI="Sample" pagesize="10" defaultsort="1"  >
        <display:column property="id" title="ID" sortable="true" headerClass="sortable" />
        <display:column property="name" title="Name" sortable="true" headerClass="sortable"/>
     
     </display:table>
 <a href="#" class="show_hide">hide</a></div>
	
</div>
	
		
<s:form action="Sample">
		<s:submit cssClass="header" />
	</s:form>
</body>
</html>
