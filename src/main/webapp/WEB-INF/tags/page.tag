<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<script
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="#">Games Tracker</a>
			<ul class="nav">
				<li><a href="<c:url value="/games/list"/>">Games</a></li>
				<li><a href="<c:url value="/player/list"/>">Players</a></li>
				<li><a href="<c:url value="/discipline/list"/>">Disciplines</a></li>
			</ul>
		</div>
	</div>
	<jsp:doBody />
</body>
</html>