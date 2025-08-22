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
 * Servlet implementation class NoticeServlet
 */
@WebServlet("/notice")
public class NoticeServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {

      HelloDAO dao = new HelloDAO();
      List<Post> notice = dao.noticeGetAll();

      request.setAttribute("notice", notice);
      request.getRequestDispatcher("notice.jsp").forward(request, response);
  }
}
