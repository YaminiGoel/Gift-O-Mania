<%-- 
    Document   : enterDb
    Created on : 5 Nov, 2016, 1:32:04 PM
    Author     : YAMINI
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<% 

        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String eMail = request.getParameter("eMail");
        String tel = request.getParameter("telNo");
        String Email = request.getParameter("Email");
        String password = request.getParameter("pswd");
                
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/g-o-m", "root", "root");

        PreparedStatement prepareSelect;
        String query = String.format("SELECT * FROM login WHERE Email = '%s' ", Email);
        
        prepareSelect = conn.prepareStatement(query);
        ResultSet result = prepareSelect.executeQuery(query);
        
        if(!result.next()) //empty
        {
            
            String insertLogin = String.format("INSERT INTO login (Email, Password) VALUES('%s','%s')", Email, password);
            PreparedStatement preparedInsert = conn.prepareStatement(insertLogin);
            preparedInsert.executeUpdate();
            preparedInsert.close();
            
            String insertCust = String.format("INSERT INTO customers (Email, FName, LName, EMail, ContactNum) VALUES ('%s','%s','%s','%s','%s')",Email, fName, lName, eMail, tel);
            PreparedStatement preparedStatement = conn.prepareStatement(insertCust);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        prepareSelect.close();
        conn.close();
        response.sendRedirect("../profile.jsp");   
        }     
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation</title>
    </head>
    <body>
        User Name already exists.<br><br>
        Try again:
        <a href="form.html">Sign Up</a>
    </body>
</html>