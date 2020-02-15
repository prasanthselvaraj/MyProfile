<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
 #hiddenDiv{
  visibility: hidden;
 }
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
    $(document).ready(function() {
    	var hiddenVar = document.getElementById("hiddenDiv");
       if(hiddenVar.innerHTML == 'false'){
    	   document.getElementById("firstPageId").style.display="block";
    	   document.getElementById("secondPageId").style.display="none";
       } else {
    	   document.getElementById("firstPageId").style.display="none";
   		   document.getElementById("secondPageId").style.display="block";
       }
    });
</script>
<head>
<meta charset="ISO-8859-1">
<title>Prasanth Profile</title>
</head>
<body>

	<jsp:include page="SideMenu.jsp"></jsp:include>
	<div id="firstPageId">
		<jsp:include page="ProfilePageOne.jsp"></jsp:include>
	</div>
	<div id="hiddenDiv">${hiddenValue}</div>
	<div id="secondPageId">
		<jsp:include page="ProfilePageTwo.jsp"></jsp:include>
	</div>

</body>
</html>