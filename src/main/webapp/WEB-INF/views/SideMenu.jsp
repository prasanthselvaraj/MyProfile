<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
#leftPanelId, #circleId, #leftInitial, #leftCrossId, #rightInitial, #rightCrossId, #lineIdLeftOne, #lineIdLeftTwo, #lineIdLeftThree,
#lineIdLeftFour, #lineIdLeftFive, #breadCrumbId {	
     position: absolute;
}

#leftPanelId {
	float: left;
	width: 318px;
	height: 98%;
	background-image: linear-gradient(to bottom, rgba(255, 92, 92, 1),
		rgba(255, 0, 0, 0));
}

#circleId {
	top: 17px;
	left: 61px;
}

#leftInitial {
	font-size: 37px;
	top: 94px;
	left: 97px;
}

#leftCrossId {
	left: 36px;
}

#rightInitial {
	top: 94px;
	font-size: 37px;
	left: 205px;
}

#lineIdLeftOne {
	top: 13em;
}

#lineIdLeftTwo {
	top: 19.5em;
}

#lineIdLeftThree {
	top: 23.5em;
}

#lineIdLeftFour{
   top: 28.7em;
}

#lineIdLeftFive{
   top: 32.5em;
}

label[for="professionalLabel"], label[for="experienceLabel"], label[for="employmentLabel"], label[for="academicLabel"],
label[for="projectLabel"] {
	font-family: sans-serif;
	font-style: oblique;
	color: brown;
	position: absolute;
}

label[for="professionalLabel"] {
	top: 243px;
	padding-left: 124px;
}

label[for="experienceLabel"] {
	top: 21.6em;
	left: 238px;
}

label[for="employmentLabel"] {
	top: 25.7em;
    left: 136px;
}

label[for="academicLabel"] {
    top: 30.8em;
    left: 136px;
}

label[for="projectLabel"] {
    top: 34.7em;
    left: 173px;
}

#breadCrumbId{
    top: 13em;
    left: 20.6em;
}
</style>
<head>
</head>
<body>
	<div id="leftPanelId">
		<div id="circleId">
			<svg height="200" width="200"> <circle cx="100" cy="100"
					r="100" stroke="grey" stroke-width="1" fill="white" /> </svg>
		</div>
		<label id="leftInitial">${leftAlpha}</label>
		<div id="leftCrossId">
			<svg height="200" width="200"> <line x1="50" y1="50" x2="200"
					y2="180" style="stroke:rgb(0,0,0);stroke-width:1" /> </svg>
		</div>
		<label id="rightInitial">${rightAlpha}</label>
		<div id="rightCrossId">
			<svg height="250" width="320"> <line x1="235" y1="50" x2="85"
					y2="180" style="stroke:rgb(0,0,0);stroke-width:1" /> </svg>
		</div>
		<div id="lineIdLeftOne">
			<svg height="90" width="320"> <line x1="80" y1="25" x2="300"
					y2="25" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdLeftTwo">
			<svg height="90" width="320"> <line x1="80" y1="25" x2="300"
					y2="25" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdLeftThree">
			<svg height="90" width="320"> <line x1="80" y1="25" x2="300"
					y2="25" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdLeftFour">
			<svg height="90" width="320"> <line x1="80" y1="25" x2="300"
					y2="25" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdLeftFive">
			<svg height="90" width="320"> <line x1="80" y1="25" x2="300"
					y2="25" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<label for="professionalLabel">${professional}</label> <label
			for="experienceLabel">${experience}</label> <label
			for="employmentLabel">${employment}</label> <label
			for="academicLabel">${academic}</label> <label for="projectLabel">${project}</label>
	</div>
</body>
</html>