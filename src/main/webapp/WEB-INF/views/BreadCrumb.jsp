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
		if (current.id == "PageOneId") {
				var host = window.location.hostname;
				var path = window.location.pathname;
				var pathArr = path.split("/");
				var protocol = window.location.protocol;
				var port = window.location.port;
				var urlForm = protocol.concat("//", host, ":", port, "/", pathArr[1], "/", pathArr[2],
						"/start");
				window.location.href = urlForm;
		} else {
			var host = window.location.hostname;
			var path = window.location.pathname;
			var pathArr = path.split("/");
			var protocol = window.location.protocol;
			var port = window.location.port;
			var urlForm = protocol.concat("//", host, ":", port, "/", pathArr[1], "/", pathArr[2],
					"/pagetwo");
			window.location.href = urlForm;
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