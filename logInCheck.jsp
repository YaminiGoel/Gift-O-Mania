<%-- 
    Document   : loginCheck
    Created on : 5 Nov, 2016, 11:32:25 AM
    Author     : YAMINI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<%
    String loginClicked = request.getParameter("submit");
    if(loginClicked != null)
    {
        String Email = request.getParameter("Email");
        String password = request.getParameter("password");
        
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn= DriverManager.getConnection("jdbc:mysql://localhost/g-o-m", "root", "root");

        Statement stmt = conn.createStatement(); 
        ResultSet result = stmt.executeQuery("select * from login");
        
        while(result.next())
        {
           if(result.getString("Email").equals(Email) && result.getString("Password").equals(password))
               response.sendRedirect("../profile.jsp");      
        }
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wrong Password</title>
    </head>
    <body>
        Either the Email or password is incorrect.<br><br>
        Try again:
        <a href="logInForm.html">Login Form</a>        
    </body>
</html>
