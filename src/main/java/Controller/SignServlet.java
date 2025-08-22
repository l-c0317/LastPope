package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Model.HelloDAO;

/**
 * Servlet implementation class SignServlet
 */
@WebServlet("/sign")
public class SignServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
	  request.setCharacterEncoding("UTF-8"); // POST 요청 처리 전에 반드시 호출
	  String userId = request.getParameter("userId");
	  String password = request.getParameter("password");
	  String userName = request.getParameter("userName");
	  String userPhone = request.getParameter("userPhone");
	  String status = request.getParameter("status");

      HelloDAO dao = new HelloDAO();
      dao.sign(userId, password, userName, userPhone, status);
	  response.sendRedirect("index.jsp");
  }
}
