<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
	<a class="navbar-brand" href="index.html">Blog</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="index.html">Home <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="hobby.html">Hobby</a>
			</li>
			<li class="nav-item"><a class="nav-link " href="favorite.html">Favorite</a>
			</li>
			<li class="nav-item"><a class="nav-link " href="dream.html">Dream</a>
			</li>
		</ul>
		<!-- 로그인 상태에 따라 바뀔 div -->
		<div id="changableForm">
		<%	String user = (String)session.getAttribute("user"); 
			if (user != null) {	// 로그인이 되어있다면
		%>
		<form method="post" action="/WebClass/bloglogout">
			<%= user %>님 로그인 중
			<button type="submit" class="btn btn-outline-dark" >Logout</button>
		</form>
		<% 
			} else { // 로그인이 되어있지 않다면
		%>	
		<form class="form-inline my-2 my-lg-0" id="loginForm" method="post" action="/WebClass/bloglogin" style="display: inline;">
			<input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="id" id="loginId" name="id" required>
			<input class="form-control mr-sm-2" type="password" placeholder="Password"	aria-label="Password" id="loginPassword" name="pwd" required>
			<button class="btn btn-outline-dark" type="submit">Login</button> &nbsp;
		</form>
		<button class="btn btn-outline-dark" data-toggle="modal" data-target="#regModal">Sign Up</button>
		<% } %>
		</div>
		
	</div>
</nav>