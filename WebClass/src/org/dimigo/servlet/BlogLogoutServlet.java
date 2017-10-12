package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BlogLogoutServlet
 */
@WebServlet("/bloglogout")
public class BlogLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/WebClass/myblogJsp/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("user") != null) {		
			session.invalidate();	// 확실한 로그아웃을 위해 세션 자체를 삭제하고 재발급
		}
		RequestDispatcher rd = request.getRequestDispatcher("/myblogJsp/index.jsp");
		rd.forward(request, response);
	}

}
