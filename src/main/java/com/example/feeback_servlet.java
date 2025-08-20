package com.example;

import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


@WebServlet("/feedback")
public class feeback_servlet extends HttpServlet {
    private static final long SerialVersionUID = 1L;


    private static final String schema = "jdbc:mysql://localhost:3306/feedback_db";
    private static final String user = "root";
    private static final String password = "Naved";

    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Connection connection = null;
        PreparedStatement prestmt = null;


        try {

            Class.forName("com.mysql.cj.jdbc.Driver");


            connection = DriverManager.getConnection(schema,user,password);


            String sql_query = "insert into feedback (name,email,message) value (?,?,?)";
            prestmt = connection.prepareStatement(sql_query);
            prestmt.setString(1,name);
            prestmt.setString(2,email);
            prestmt.setString(3,message);

            prestmt.executeUpdate();

            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("message",message);


            request.getRequestDispatcher("thankyou.jsp").forward(request,response);
        }
        catch (Exception e) {

            e.printStackTrace();
            response.getWriter().println("Error"+ e.getMessage());

        }
        finally {
            try {if (prestmt != null) prestmt.close();} catch (Exception Ignored) {}
            try {if (connection != null) connection.close();} catch (Exception Ignored) {}
        }


    }


}
