package assessment2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Program2 extends HttpServlet {

   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      
      out.println(
                  "  <h1> Name: "
                  + request.getParameter("name") + "\n" +
                  "  <h1> Course: "
                  + request.getParameter("course") + "\n"
      );
   }

   public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

      doGet(request, response);
   }
}