<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
#lineIdRight, #projectId, #technologyLabel, #techLableOne, #techLableTwo,
	#dbLabel, #db, #responseLabel, #responsibilityId {
	position: absolute;
}

#lineIdRight {
	top: 226px;
}

#technologyLabel {
	top: 14em;
	width: 6em;
	left: 23em;
}

#techLableOne {
	top: 13em;
	width: 17em;
	left: 29em;
}

#techLableTwo {
	top: 14.8em;
	width: 8em;
	left: 29em;
}

#dbLabel {
	top: 17.5em;
	width: 5em;
	left: 24em;
}

#db {
	top: 16.5em;
	width: 7em;
	left: 29em;
}

#responseLabel {
	top: 19em;
    width: 7em;
    left: 22.5em;
}

#responsibilityId{
    top: 18em;
    width: 63em;
    left: 28em;
}

#technologyLabel, #techLableOne, #techLableTwo, #dbLabel, #db,
	#responseLabel, #responsibilityId {
	font-size: 17px;
	font-style: italic;
}
</style>
<head>
</head>
<body>
	<jsp:include page="RightProfileBase.jsp"></jsp:include>
	<div id="lineIdRight">
		<svg height="111" width="1500"> <line x1="330" y1="16" x2="1500"
				y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
	</div>
	<div id="projectId">
		<label id="technologyLabel">${technologyLabel}</label> <label
			id="dbLabel">${dbLabel}</label> <label id="responseLabel">${responseLabel}</label>
		<p id="techLableOne">${techLableOne}</p>
		<p id="techLableTwo">${techLableTwo}</p>
		<p id="db">${db}</p>
		<div id="responsibilityId">
			<ul style="list-style-type: square;">
				<li>${statementOne}</li>
				<li>${statementTwo}</li>
				<li>${statementThree}</li>
				<li>${statementFour}</li>
			</ul>
		</div>
	</div>
</body>
</html>