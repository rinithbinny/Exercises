package assessment2;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class Program3 extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter pw = res.getWriter();
        String pid1 = req.getParameter("id");
        String pname = req.getParameter("name");
        String price1 = req.getParameter("price");
        int pid = Integer.parseInt(pid1);
        float price = Float.parseFloat(price1);
        try {

        	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/s", "root", "r");
            PreparedStatement ps = con.prepareStatement("insert into Product values (?,?,?)");
            ps.setInt(1, pid);
            ps.setString(2, pname);
            ps.setFloat(3, price);
            ps.executeUpdate();
            con.close();
        } catch (Exception e) {
        	
        }
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doGet(req, res);
    }
};