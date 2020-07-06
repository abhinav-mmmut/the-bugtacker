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
	 /*input {
        text-align: center;
      }
	.form{
		text-align: center;
	}*/
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
			<li><a href="read">Bugs</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right rmargin">
			<li class="active"><a href="#">Login</a></li>
		</ul>

	</nav>

	<div class="container form" >
	<h1>Login</h1>
	
	<form action="login" method="post">
			<input type="text" placeholder="Username" name="username"><br><br>
			<input type="password" placeholder="Password" name="password"><br><br>
			<button type="submit" id="login-button">Login</button>
		</form>

	</div>

	<footer class="footer">
		<p style="margin-left: 10px">Copyright © by Abhinav</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>