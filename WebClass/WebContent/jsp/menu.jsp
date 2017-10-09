<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav mr-auto">
		<li class="nav-item" onmouseover="menu_over(this);"
			onmouseout="menu_out(this);"><a class="nav-link" href="/WebClass/session">Menu1
				<span class="sr-only">(current)</span>
		</a></li>
		<li class="nav-item" onmouseover="menu_over(this);"
			onmouseout="menu_out(this);"><a class="nav-link" href="p.html">Menu2</a></li>
		<li class="nav-item" onmouseover="menu_over(this);"
			onmouseout="menu_out(this);"><a class="nav-link" href="dom.html">Menu3</a>
		</li>
	</ul>
	<form class="form-inline my-2 my-lg-0" id="loginForm">
		<input class="form-control mr-sm-2" type="text" placeholder="ID"
			aria-label="ID" id="id" required> <input
			class="form-control mr-sm-2" type="password" placeholder="PWD"
			aria-label="PWD" id="pwd" required>
		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
	</form>
</div>