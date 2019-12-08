<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
 #secondPageId{
   display: none;
 }
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
    var contentFlag;
    $(document).ready(function() {
    	if(typeof contentFlag == 'undefined' || contentFlag == 'false'){
    		contentFlag = 'false';
    	} else {
    		contentFlag = 'true';
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
	<div id="secondPageId">
		<jsp:include page="ProfilePageTwo.jsp"></jsp:include>
	</div>

</body>
</html>