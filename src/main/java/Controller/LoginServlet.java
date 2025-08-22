package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Model.HelloDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
	  String userId = request.getParameter("userId");
	  String password = request.getParameter("password");

      HelloDAO dao = new HelloDAO();
      String loginId = dao.login(userId, password);

      if(!(loginId.equals("undefined"))) {
		  HttpSession session = request.getSession();
		  session.setAttribute("userId", loginId);
		  response.sendRedirect("index.jsp");
      }else{
    	  response.sendRedirect("login.jsp?error=1");
      }
  }
}
