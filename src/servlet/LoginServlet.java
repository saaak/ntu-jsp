package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.DBcon;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    public LoginServlet(){
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("loginName");
        String passWord = request.getParameter("passWord");
        String sql = "select * from userinfo";
        sql += " where loginname='" + userName + "' and password='" + passWord + "'";
        HttpSession session = request.getSession();
        Connection con = DBcon.getConnction();
        Statement stmt;
        ResultSet rs;
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                session.setAttribute("userName", userName);
                response.sendRedirect("./ch07/welcome.jsp");
            }
            else{
            response.sendRedirect("./ch07/loginfail.jsp");
            }
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    public void init() throws ServletException {

    }
}

