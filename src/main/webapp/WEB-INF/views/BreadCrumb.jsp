<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.breadcrumb {
	position: absolute;
}

#PageOneId, #PageTwoId, #interParaId {
	position: absolute;
	width: 4em;
	font-family: sans-serif;
}

#PageTwoId {
	left: 4.5em;
}

#interParaId {
	left: 3.6em;
	top: 1px;
}

#PageOneId:hover, #PageTwoId:hover {
    cursor: pointer;
    color: white
}
</style>
<script type="text/javascript">
function pageChangeClick(current) {
	   var pageOneVariable = document.getElementById("firstPageId");
	   var pageTwoVariable = document.getElementById("secondPageId");
		if (current.id == "PageOneId") {
			if(typeof contentFlag == 'undefined' || contentFlag == 'false'){
				contentFlag = 'false';
				pageOneVariable.style.display="block";
				pageTwoVariable.style.display="none";
			}
		} else {
			contentFlag = 'true';
			pageOneVariable.style.display="none";
			pageTwoVariable.style.display="block";
		}
}

</script>
<body>
	<div class="breadcrumb">
		<div id="PageOneId" onclick="pageChangeClick(this)">
          Page-1
        </div>
        
		<div id="interParaId" >
			<strong>></strong>
		</div>
		
		<div id="PageTwoId" onclick="pageChangeClick(this)">
		  Page-2
		</div>
	</div>
</body>
</html>