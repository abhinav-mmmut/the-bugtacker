<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
			<li class="active"><a href="#">Home</a></li>
			<li><a href="read">Bugs</a></li>
			
			
		</ul>

		<ul class="nav navbar-nav navbar-right rmargin">
			<li><a href="Login.jsp">Login</a></li>
		</ul>

	</nav>

	<div class="container">
		<H1>Bug Tracker</H1>
		<p>
		A bug tracking system or defect tracking system is a software application 
		that keeps track of reported software bugs in software development projects. 
		It may be regarded as a type of issue tracking system.
		Typically bug tracking systems are integrated with other project management software.
		A major component of a bug tracking system is a database that records facts about known bugs.
		The main benefit of a bug-tracking system is to provide a clear 
		centralized overview of development requests, and their state.</p>
		<p>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
		labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco 
		laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in 
		voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
		cupidatat non proident, sunt in culpa qui officia deserunt mollit anim 
		id est laborum.
		</p>
		
	</div>

	<footer class="footer">
		<p style="margin-left: 10px">Copyright © by Abhinav</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>
    