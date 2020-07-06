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
	/* input {
        text-align: center;
      }
	.form{
		text-align: center;
		}*/
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
			<li><a href="showbugs">Bugs</a></li>
			<li class="active"><a href="#">Add Bug details</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right rmargin">
			<li><a href="Logout.jsp">Logout</a></li>
		</ul>

	</nav>

	<div class="container form">
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	if(session.getAttribute("username")==null){
		response.sendRedirect("index.jsp"); 
	}
%>
<h1>Add bug details</h1>
<form action="update" method="post">
<input type="text" value="${bug.getId()}" name="id" size="50"><br><br>
<input type="text" value="${bug.getBugname()}" name="bugname" size="50"><br><br>
<input type="text" value="${bug.getBugdetails()}" name="bugdetails" size="50"><br><br>
<input type="text" value="${bug.getEmployee()}" name="employee" size="50"><br><br>
<input type="submit">
</form>
	</div>

	<footer class="footer">
		<p style="margin-left: 10px">Copyright © by Abhinav</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>