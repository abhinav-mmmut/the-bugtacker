<%@page import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<li class="active"><a href="#">Bugs</a></li>
			<li><a href="Addbugdetails.jsp">Add Bug details</a></li>
			
		</ul>

		<ul class="nav navbar-nav navbar-right rmargin">
						
						<li><a href="Logout.jsp">Logout</a></li>
		</ul>

	</nav>

	<div class="container">
<h1>All reported bugs</h1>
<table class="table table-striped">
		<caption></caption>
		<thead>
			<th>Id</th>
			<th>Bug</th>
			<th>Description</th>
			<th>Employee</th>
			<th>Action</th>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="abc">
				<tr>
					<td>${abc.getId()}</td>
					<td>${abc.getBugname()}</td>
					<td>${abc.getBugdetails()}</td>
					<td>${abc.getEmployee()}</td>
					<td><a href="update?id=<c:out value='${abc.getId()}' />">Edit</a>
								&nbsp; 
								<a href="delete?id=<c:out value='${abc.getId()}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	</div>

	<footer class="footer" >
		<p style="margin-left: 10px">Copyright © by Abhinav</p>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>