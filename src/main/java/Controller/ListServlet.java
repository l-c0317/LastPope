package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.HelloDAO;
import Model.Post;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/list")
public class ListServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

      HelloDAO dao = new HelloDAO();
      List<Post> list = dao.listGetAll();

      request.setAttribute("list", list);
      request.getRequestDispatcher("chatting.jsp").forward(request, response);
  }
}
