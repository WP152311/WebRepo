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
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BlogLoginServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("/WebClass/myblogJsp/index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.println("id : "+id+", pwd : "+pwd);
		if (id == null || pwd == null) {	// 임의의 방법 (POSTMAN 등)으로 요청을 보내며 파라미터를 보내지  않았을 경우
			response.sendError(405,"아이디 또는 비밀번호가 입력되지 않았습니다.");
		} else if ("".equals(id) || "".equals(pwd)) {	// 임의의 방법 (POSTMAN 등)으로 요청을 보내며 파라미터가 빈 문자열일 경우
			request.setAttribute("error", Boolean.TRUE);
			request.setAttribute("errormsg", "아이디 또는 비밀번호가 빈 문자열입니다.");
			RequestDispatcher rd = request.getRequestDispatcher("/myblogJsp/index.jsp");
			rd.forward(request, response);
		} // 에러 체크 완료
		
		boolean result = "test@naver.com".equals(id);
		
		if (result) {
			HttpSession session = request.getSession();
			session.setAttribute("user", id);
			RequestDispatcher rd = request.getRequestDispatcher("/myblogJsp/index.jsp");
			rd.forward(request, response);
			
		} else {
			request.setAttribute("errorid", id);			
			RequestDispatcher rd = request.getRequestDispatcher("/myblogJsp/index.jsp");
			rd.forward(request, response);
		}
}

}
