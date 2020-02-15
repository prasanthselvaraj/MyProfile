<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
#profileId, #mailId, #websiteLinks, #linkedInId, #githubId, #lineIdRightOne, #lineIdRightTwo, #lineIdRightThree, #lineIdRightFour,
#lineIdRightFive, #skillSetBoxId, #boxOneId, #boxTwoId, #boxThreeId, #boxFourId, #boxFiveId, #boxSixId, #boxSevenId, #extensionBox,
#labelDiv, #percentageDiv, #labelOne, #labelTwo, #labelThree, #labelFour, #labelFive, #statusOne, #statusTwo, #statusThree, #statusFour,
#statusFive, #projectNameId, #projectNameLabel,	#projectNamePara, #projectDespLabel, #projectDespPara, #companyNameLabel, 
#companyNamePara, #teamSizeLabel, #teamSizePara, #profileLabel, #profilePara, #empSummary, #academicSummary{
	position: absolute;
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

#profileId {
	float: right;
	width: 94em;
	height: 98%;
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
#githubId {
	top: 85px;
	padding-top: 7px;
}
#lineIdRightOne {
	top: 217px;
}
#lineIdRightTwo {
	top: 20.1em;
}
#lineIdRightThree {
	top: 24.2em;
}
#lineIdRightFour{
   top: 29.3em;
}
#lineIdRightFive{
   top: 33.2em;
}
#skillSetBoxId {
	height: 35px;
	width: 72.8em;
	top: 21.7em;
	left: 20.6em;
	border-style: solid;
	border-color: #a9a8a842;
	border-radius: 15px;
}
#boxOneId {
	left: 1em;
}
#boxTwoId {
	left: 8.7em;
}
#boxThreeId {
	left: 16.5em;
}
#boxFourId {
	left: 25em;
}
#boxFiveId {
	left: 33em;
}
#boxSixId {
	left: 41em;
}
#boxOneId, #boxTwoId, #boxThreeId, #boxFourId, #boxFiveId, #boxSixId,
	#boxSevenId {
	top: 8.4px;
	width: 14em;
	border-left-style: solid;
	border-left-width: 5px;
	border-color: rgb(230, 140, 140);
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	font-style: italic;
}
#boxSixId:hover {
	overflow: visible;
}
#boxSevenId {
	left: 59em;
	width: 140px;
}
#boxSevenId:hover {
	overflow: visible;
}
#backEndLabel, #frontEndLabel, #frameWorkLabel, #serverLabel,
	#dataBaseLabel, #versionControl, #ideLabel {
	left: 5px;
	position: relative;
	cursor: pointer;
}
#extensionBox {
	display: none;
	height: 35px;
	width: 72.8em;
 	top: 21.7em;
    left: 20.6em; 
	border-style: solid;
	border-color: #a9a8a842;
	border-radius: 15px;
}
#labelDiv{
    display: none;
    left: 1.6em;
}
#percentageDiv {
    display: none;
    left: 42em;
}
#labelOne, #labelTwo, #labelThree, #labelFour, #labelFive, #statusOne, #statusTwo, #statusThree, #statusFour, 
#statusFive{
    display: none;
}
#empSummary{
     top: 25em;
}
#academicSummary{
    top: 29.8em;
}
#projectNameLabel, #projectNamePara, #projectDespLabel, #projectDespPara, #companyNameLabel, #companyNamePara,
#teamSizeLabel, #teamSizePara, #profileLabel, #profilePara {
    font-size: 17px;
    font-style: italic;
}
#companyNameLabel{
   top: 2.8em;
    left: 23.3em;
}
#companyNamePara{
    top: 1.9em;
    left: 28em;
    width: 10em;
}
#projectNameId {
    top: 31.7em;
} 
#projectNameLabel{
    top: 5em;
    width: 7em;
    left: 21.7em;
}
#projectDespLabel{
    top: 7em;
    left: 19.3em;
    width: 9em;
}
#teamSizeLabel{
    top: 10em;
    width: 5em;
    left: 23.1em;
}
#profileLabel{
    top: 12em;
    left: 24.3em;
}
#projectNamePara {
    top: 4em;
    width: 15em;
    left: 28em;
}
#projectDespPara{
    top: 6em;
    width: 60em;
    left: 28em;
}
#teamSizePara{
    top: 9em;
    left: 28em;
}
#profilePara{
    top: 11em;
    width: 11em;
    left: 28em;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
	function colorChange(num, current) {
		var emailVar = document.getElementById("emailId");
		var linkedVar = document.getElementById("linkedInId");
		var gitVar = document.getElementById("githubId");
		if (num == 1) {
			if (current.id == "emailId") {
				emailVar.style.color = "white";
			} else if (current.id == "linkedInId") {
				linkedVar.style.color = "white";
			} else {
				gitVar.style.color = "white";
			}
		} else {
			emailVar.style.color = "black";
			linkedVar.style.color = "black";
			gitVar.style.color = "black";
		}
	}

	function hideElement(num) {
		var extensionVar = document.getElementById("extensionBox");
		var labelDivVar = document.getElementById("labelDiv");
		var percentageDivVar = document.getElementById("percentageDiv");
		var empSummaryDivVar = document.getElementById("empSummary");
		var lineRightDivVar = document.getElementById("lineIdRightThree");
		var academicSummmary = document.getElementById("academicSummary");
		var lineRightFourVar = document.getElementById("lineIdRightFour");
		extensionVar.style.display = "none";
		labelDivVar.style.display = "none";
		percentageDivVar.style.display = "none";
		empSummaryDivVar.style.display = "block";
		lineRightDivVar.style.display = "block";
		academicSummmary.style.display = "block";
		lineRightFourVar.style.display = "block";
		document.getElementById("companyNameLabel").style.display="block";
		document.getElementById("companyNamePara").style.display="block";
		document.getElementById("lineIdRightFive").style.display="block";
	}

	function extensionBoxDisplay(num) {
		var extensionVar = document.getElementById("extensionBox");
		var empSummaryDivVar = document.getElementById("empSummary");
		var lineRightDivVar = document.getElementById("lineIdRightThree");
		var academicSummmary = document.getElementById("academicSummary");
		var lineRightFourVar = document.getElementById("lineIdRightFour");
		extensionVar.style.display = "block";
		empSummaryDivVar.style.display = "none";
		lineRightDivVar.style.display = "none";
		var jsonData;
		jsonData = JSON.stringify(num);
		$.ajax({
			cache : false,
			type : "POST",
			async : false,
			url : "http://localhost:8080/MyProfile/startController/skillset",
			data : jsonData,
			contentType : "application/json",
			dataType : "json",
			processData : true,
			success : function(result) {
				var labelDivVar = document.getElementById("labelDiv");
				var percentageDivVar = document.getElementById("percentageDiv");
				var labelOneVar = document.getElementById("labelOne");
				var labelTwoVar = document.getElementById("labelTwo");
				var labelThreeVar = document.getElementById("labelThree");
				var labelFourVar = document.getElementById("labelFour");
				var labelFiveVar = document.getElementById("labelFive");
				var statusOneVar = document.getElementById("statusOne");
				var statusTwoVar = document.getElementById("statusTwo");
				var statusThreeVar = document.getElementById("statusThree");
				var statusFourVar = document.getElementById("statusFour");
				var statusFiveVar = document.getElementById("statusFive");
				percentageDivVar.style.display = "block";
				labelDivVar.style.display = "block";
				if(result.skills.length == 1){
					labelTwoVar.style.display = "none";
					labelThreeVar.style.display = "none";
					labelFourVar.style.display = "none";
					labelFiveVar.style.display = "none";
					statusTwoVar.style.display = "none";
					statusThreeVar.style.display = "none";
					statusFourVar.style.display = "none";
					statusFiveVar.style.display = "none";
					extensionVar.style.height = "80px";
					labelDivVar.style.height = "1em";
					labelDivVar.style.top = "3em";
					labelDivVar.style.width = "6em";
					labelOneVar.style.display = "block";
					labelOneVar.style.top = "1px";
					labelOneVar.innerHTML = result.skills[0];
					statusOneVar.style.display = "block";
					percentageDivVar.style.height = "2em";
					percentageDivVar.style.top = "2.6em";
					percentageDivVar.style.width = "18em";
					statusOneVar.style.height = "1em";
					statusOneVar.style.width = "18em";
					statusOneVar.style.top = "6px";
					statusOneVar.style.borderStyle = "ridge";
					statusOneVar.style.borderRadius = "10px";
					statusOneVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[0] + ", rgba(255, 0, 0, 0))";
				} else if (result.skills.length == 2){
					labelThreeVar.style.display = "none";
					labelFourVar.style.display = "none";
					labelFiveVar.style.display = "none";
					statusThreeVar.style.display = "none";
					statusFourVar.style.display = "none";
					statusFiveVar.style.display = "none";
					extensionVar.style.height = "123px";
					labelDivVar.style.height = "5em";
					labelDivVar.style.width = "8em";
					labelDivVar.style.top = "3em";
					percentageDivVar.style.height = "4em";
					percentageDivVar.style.width = "18em";
					percentageDivVar.style.top = "3em";
					labelOneVar.style.display = "block";
					labelOneVar.style.top = "7px";
					labelOneVar.innerHTML = result.skills[0];
					labelTwoVar.style.display = "block";
                    labelTwoVar.style.top = "40px";
					labelTwoVar.innerHTML = result.skills[1];
					statusOneVar.style.display = "block";
					statusOneVar.style.height = "1em";
					statusOneVar.style.width = "18em";
					statusOneVar.style.top = "6px";
					statusOneVar.style.borderStyle = "ridge";
					statusOneVar.style.borderRadius = "10px";
					statusOneVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[0] + ", rgba(255, 0, 0, 0))";
					statusTwoVar.style.display = "block";
					statusTwoVar.style.height = "1em";
					statusTwoVar.style.width = "18em";
					statusTwoVar.style.top = "42px";
					statusTwoVar.style.borderStyle = "ridge";
					statusTwoVar.style.borderRadius = "10px";
					statusTwoVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[1] + ", rgba(255, 0, 0, 0))";
				} else if (result.skills.length == 3){
					academicSummmary.style.display = "none";
					lineRightFourVar.style.display = "none";
					labelFourVar.style.display = "none";
					labelFiveVar.style.display = "none";
					statusFourVar.style.display = "none";
					statusFiveVar.style.display = "none";
					extensionVar.style.height = "154px";
					labelDivVar.style.height = "6em";
					labelDivVar.style.width = "6em";
					percentageDivVar.style.height = "7em";
					percentageDivVar.style.width = "18em";
					labelOneVar.style.display = "block";
					labelOneVar.innerHTML = result.skills[0];
					labelTwoVar.style.display = "block";
					labelTwoVar.style.top = "40px";
					labelTwoVar.innerHTML = result.skills[1];
					labelThreeVar.style.display = "block";
					labelThreeVar.style.top="74px";
					labelThreeVar.innerHTML = result.skills[2];
					statusOneVar.style.display = "block";
					statusOneVar.style.height = "1em";
					statusOneVar.style.width = "18em";
					statusOneVar.style.top = "6px";
					statusOneVar.style.borderStyle = "ridge";
					statusOneVar.style.borderRadius = "10px";
					statusOneVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[0] + ", rgba(255, 0, 0, 0))";
					statusTwoVar.style.display = "block";
					statusTwoVar.style.height = "1em";
					statusTwoVar.style.width = "18em";
					statusTwoVar.style.top = "42px";
					statusTwoVar.style.borderStyle = "ridge";
					statusTwoVar.style.borderRadius = "10px";
					statusTwoVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[1] + ", rgba(255, 0, 0, 0))";
					statusThreeVar.style.display = "block";
					statusThreeVar.style.height = "1em";
					statusThreeVar.style.width = "18em";
					statusThreeVar.style.top = "81px";
					statusThreeVar.style.borderStyle = "ridge";
					statusThreeVar.style.borderRadius = "10px";
					statusThreeVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[2] + ", rgba(255, 0, 0, 0))";
				} else {
					academicSummmary.style.display = "none";
					lineRightFourVar.style.display = "none";
					document.getElementById("companyNameLabel").style.display="none";
					document.getElementById("companyNamePara").style.display="none";
					document.getElementById("lineIdRightFive").style.display="none";
					extensionVar.style.height = "232px";
					labelDivVar.style.height = "11em";
					labelDivVar.style.width = "15em";
					percentageDivVar.style.height = "12em";
					percentageDivVar.style.width = "18em";
					percentageDivVar.style.top = "2.6em";
					labelOneVar.style.display = "block";
					labelTwoVar.style.display = "block";
					labelTwoVar.style.top = "37px";
					labelThreeVar.style.display = "block";
					labelThreeVar.style.top="75px";
					labelFourVar.style.display = "block";
					labelFourVar.style.top = "113px";
					labelFiveVar.style.display = "block";
					labelFiveVar.style.top="150px";
					statusOneVar.style.display = "block";
					statusOneVar.style.height = "1em";
					statusOneVar.style.width = "18em";
					statusOneVar.style.top = "6px";
					statusOneVar.style.borderStyle = "ridge";
					statusOneVar.style.borderRadius = "10px";
					statusOneVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[0] + ", rgba(255, 0, 0, 0))";
					statusTwoVar.style.display = "block";
					statusTwoVar.style.height = "1em";
					statusTwoVar.style.width = "18em";
					statusTwoVar.style.top = "43px";
					statusTwoVar.style.borderStyle = "ridge";
					statusTwoVar.style.borderRadius = "10px";
					statusTwoVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[1] + ", rgba(255, 0, 0, 0))";
					statusThreeVar.style.display = "block";
					statusThreeVar.style.height = "1em";
					statusThreeVar.style.width = "18em";
					statusThreeVar.style.top = "81px";
					statusThreeVar.style.borderStyle = "ridge";
					statusThreeVar.style.borderRadius = "10px";
					statusThreeVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[2] + ", rgba(255, 0, 0, 0))";
					statusFourVar.style.display = "block";
					statusFourVar.style.height = "1em";
					statusFourVar.style.width = "18em";
					statusFourVar.style.top = "120px";
					statusFourVar.style.borderStyle = "ridge";
					statusFourVar.style.borderRadius = "10px";
					statusFourVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[3] + ", rgba(255, 0, 0, 0))";
					statusFiveVar.style.display = "block";
					statusFiveVar.style.height = "1em";
					statusFiveVar.style.width = "18em";
					statusFiveVar.style.top = "158px";
					statusFiveVar.style.borderStyle = "ridge";
					statusFiveVar.style.borderRadius = "10px";
					statusFiveVar.style.background = "linear-gradient(to right, rgba(255, 92, 92, 1)" + result.percentage[4] + ", rgba(255, 0, 0, 0))";
					labelOneVar.innerHTML = result.skills[0];
					labelTwoVar.innerHTML = result.skills[1];
					labelThreeVar.innerHTML = result.skills[2];
					labelFourVar.innerHTML = result.skills[3];
					labelFiveVar.innerHTML = result.skills[4];
				}
			},
		}); 
		}
</script>
<head>
</head>
<body>
	<div id="profileId">
		<div class="nameId">${name}</div>
		<img src="mailbox.png" width="42" height="42">
		<div id="mailId">
			<a id="emailId" onmouseover="colorChange(1, this)"
				onmouseout="colorChange(0, this)"
				href="mailto:prasanthselvaraj10101994@gmail.com" target="_blank">prasanthselvaraj10101994@gmail.com</a>
		</div>
		<div id="websiteLinks">
			<a id="linkedInId" onmouseover="colorChange(1, this)"
				onmouseout="colorChange(0, this)"
				href="https://www.linkedin.com/in/10prasanths/" target="_blank">Linkedin
				Profile</a> <a id="githubId" onmouseover="colorChange(1, this)"
				onmouseout="colorChange(0, this)"
				href="https://github.com/prasanthselvaraj" target="_blank">GitHub</a>
		</div>
		
		<div id="lineIdRightOne">
			<svg height="111" width="1500"> <line x1="330" y1="16"
					x2="1500" y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<p align="left"
			style="font-family: 'sans-serif'; position: absolute; top: 225px; left: 330px; font-size: 17px; font-style: italic;">${profStatement}</p>
		<div id="lineIdRightTwo">
			<svg height="80" width="1500"> <line x1="330" y1="16" x2="1500"
					y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdRightThree">
			<svg height="80" width="1500"> <line x1="330" y1="16" x2="1500"
					y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdRightFour">
			<svg height="80" width="1500"> <line x1="330" y1="16" x2="1500"
					y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="lineIdRightFive">
			<svg height="80" width="1500"> <line x1="330" y1="16" x2="1500"
					y2="16" style="stroke:rgb(96,96,96);stroke-width:1.5" />
		
		</div>
		<div id="skillSetBoxId">
			<div id="boxOneId" onmouseover="extensionBoxDisplay(1)"
				onmouseout="hideElement(1)">
				<label id="backEndLabel">${backend}</label>
			</div>
			<div id="boxTwoId" onmouseover="extensionBoxDisplay(2)"
				onmouseout="hideElement(2)">
				<label id="frontEndLabel">${frontEnd}</label>
			</div>
			<div id="boxThreeId" onmouseover="extensionBoxDisplay(3)"
				onmouseout="hideElement(3)">
				<label id="frameWorkLabel">${frameWork}</label>
			</div>
			<div id="boxFourId" onmouseover="extensionBoxDisplay(4)"
				onmouseout="hideElement(4)">
				<label id="serverLabel">${server}</label>
			</div>
			<div id="boxFiveId" onmouseover="extensionBoxDisplay(5)"
				onmouseout="hideElement(5)">
				<label id="dataBaseLabel">${dataBase}</label>
			</div>
			<div id="boxSixId" onmouseover="extensionBoxDisplay(6)"
				onmouseout="hideElement(6)">
				<label id="versionControl">${versionControl}</label>
			</div>
			<div id="boxSevenId" onmouseover="extensionBoxDisplay(7)"
				onmouseout="hideElement(7)">
				<label id="ideLabel">${ide}</label>
			</div>
		</div>
		<div id="extensionBox">
			<div id="labelDiv">
				<label id="labelOne"></label> <label id="labelTwo"></label> <label
					id="labelThree"></label> <label id="labelFour"></label> <label
					id="labelFive"></label>
			</div>
			<div id="percentageDiv">
				<div id="statusOne"></div>
				<div id="statusTwo"></div>
				<div id="statusThree"></div>
				<div id="statusFour"></div>
				<div id="statusFive"></div>
			</div>
		</div>
		<div id="empSummary">
			<p align="left"
				style="font-family: 'sans-serif'; position: absolute; width: 54em; left: 330px; font-size: 17px; font-style: italic;">${employmentSummaryOne}</p>
			<p align="left"
				style="font-family: 'sans-serif'; position: absolute; width: 48em; top: 34px; left: 330px; font-size: 17px; font-style: italic;">${employmentSummaryTwo}</p>
		</div>
		<div id="academicSummary">
			<p align="left"
				style="font-family: 'sans-serif'; position: absolute; width: 67em; left: 330px; font-size: 17px; font-style: italic;">${academicSummary}</p>
		</div>
		<div id="projectNameId">
			<label id="companyNameLabel">${companyNameLabel}</label> <label
				id="projectNameLabel">${projectNameLabel}</label> <label
				id="projectDespLabel">${projectDespLabel}</label> <label
				id="teamSizeLabel">${teamSizeLabel}</label> <label id="profileLabel">${profileLabel}</label>
			<p id="companyNamePara">${companyNamePara}</p>
			<p id="projectNamePara">${projectNamePara}</p>
			<p id="projectDespPara">${projectDespPara}</p>
			<p id="teamSizePara">${teamSizePara}</p>
			<p id="profilePara">${profilePara}</p>
		</div>
	</div>
</body>
</html>