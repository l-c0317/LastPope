package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.HelloDAO;
import Model.Post;

/**
 * Servlet implementation class ContentServlet
 */
@WebServlet("/content")
public class ContentServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

      HelloDAO dao = new HelloDAO();
      String code = request.getParameter("code");
      Post post = dao.getPostByCode(code);

      request.setAttribute("post", post);
      request.getRequestDispatcher("post.jsp").forward(request, response);
  }
}
