<!DOCTYPE html>
<html>
<head>
<title>BugTracker</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	.footer {
		position: absolute;
		bottom: 0;
		width: 100%;
		height: 40px;
		background-color: #f5f5f5;
	}
	.body{
	max-width: 100%;
  overflow-x: hidden;
	}
	.rmargin{
	margin-right: 10px;
	}
</style>
</head>

<body class="body">

	<nav class="navbar navbar-default">

		<a href="" class="navbar-brand">BugTracker</a>

		<ul class="nav navbar-nav">
			<li><a href="welcome.jsp">Home</a></li>
			<li><a href="Bugs.jsp">Bugs</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right rmargin">
			<li><a href="#">Logout</a></li>
		</ul>

	</nav>

	<div class="container">
	<h1>Logout?</h1>
<form action="logout" method="post">
Do you really want to logout?<br><br>
<input type="submit" value="Yes">

</form>
	</div>

	<footer class="footer">
		<p style="margin-left: 10px">Copyright © by Abhinav</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>