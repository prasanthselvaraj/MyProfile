<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
#mailId, #websiteLinks, #linkedInId, #githubId {
	position: absolute;
}

#profileId {
	position: absolute;
}

#profileId {
	float: right;
	width: 94em;
	height: 98%;
}

body {
	background-color: rgb(211, 211, 211);
}

a {
	background: linear-gradient(to right, var(- -mainColor) 0%,
		var(- -mainColor) 5px, transparent 5px);
	color: #000;
	padding-left: 10px;
	padding-top: 5px;
	text-decoration: none;
}

a:hover {
	background: linear-gradient(to right, var(- -mainColor) 0%,
		var(- -mainColor) 5px, transparent);
}

:root {
	-mainColor: rgba(255, 92, 92, 1);
}

#mailId {
	top: 99px;
	font-family: sans-serif;
	height: 26px;
	left: 329px;
}

#websiteLinks {
	font-family: sans-serif;
	height: 125px;
	width: 172px;
	left: 66em;
}

#linkedInId {
	top: 51px;
	padding-top: 5px;
}

.nameId {
	font-size: 27px;
	text-transform: uppercase;
	font-family: sans-serif;
	position: absolute;
	top: 40px;
	left: 317px;
	padding-left: 5px;
	padding-top: 11px;
	margin-left: 6px;
	margin-top: 6px;
}

#githubId {
	top: 85px;
	padding-top: 7px;
}

#emailId:hover, #linkedInId:hover, #githubId:hover {
    cursor: pointer;
    color: white
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
</script>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div id="profileId">
		<div class="nameId">${name}</div>
		<img src="mailbox.png" width="42" height="42">
		<div id="mailId">
			<a id="emailId" href="mailto:prasanthselvaraj10101994@gmail.com" target="_blank">prasanthselvaraj10101994@gmail.com</a>
		</div>
		<div id="websiteLinks">
			<a id="linkedInId"
				href="https://www.linkedin.com/in/10prasanths/" target="_blank">Linkedin
				Profile</a>
		    <a id="githubId"
				href="https://github.com/prasanthselvaraj" target="_blank">GitHub</a>
		</div>
		<div id="breadCrumbId">
			<jsp:include page="BreadCrumb.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>