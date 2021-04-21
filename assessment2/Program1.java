package assessment2;

import java.io.*;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.http.*;
 

public class Program1 extends HttpServlet {
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      Date date = new Date();
      
      out.println(
         "<html>\n"  +
            "<body>\n" +
               "<h1 >" + date.toString() + "</h1>\n" +
            "</body> </html>"
      );
   }
   
   public void doPost(HttpServletRequest request, HttpServletResponse response)
		      throws ServletException, IOException {

		      doGet(request, response);
		   }
}
