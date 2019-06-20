<%-- 
    Document   : tees
    Created on : 7 Nov, 2016, 3:30:18 PM
    Author     : YAMINI
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.awt.image.*"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Image"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<jsp:useBean id="dbselect" class="com.GOM.DbBean" scope="session"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="logo/logo2.ico">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="imageStyling.css">
        <title>Tees!</title>
        
        <style>
            .bg-3 {
            background-color: #ffffff; /* White */
            color: #555555;
            }
          body {
            font: 20px Montserrat, sans-serif;
            line-height: 1.8;
            color: #F9A2D5;
            }

          .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
            }
          /* Remove the jumbotron's default bottom margin */
              .jumbotron {
       //       background-image: url("logo/logo.jpg");
        //      background-size: 30%;
         //     height: 60%;
             padding: 1em 1em 0em 0em;
          h1 {
              font-size: 10px;
            }
          p {
              font-size: 4em;
              .btn {
                  padding: 2em;
              }
             }
            margin-bottom: 0;
            font-family: "Montserrat", Georgia, Serif;
            }
           footer.container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
            }
          /* Add a gray background color and some padding to the footer */
          footer {
            background-color: #f2f2f2;
            padding: 25px;
            }
        </style>
    </head>
    <body>
        <div class="jumbotron">
            <div class="container text-center">
                <h1>Gift-O-Mania </h1>
              <p>You Customize, We Personalize</p>
            </div>
        </div>
        
        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">GIFT-O-MANIA</a>
          </div>
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">HOME</a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORIES <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="mug.jsp">MUGS</a></li>
                  <li><a href="bouquet.jsp">BOUQUETS</a></li>
                  <li><a href="cake.jsp">CAKES</a></li>
                  <li><a href="tees.jsp">T-SHIRTS AND HOODIES</a></li>
                  <li><a href="teddy.jsp">TEDDY</a></li>
                  <li><a href="popDolls.jsp">POP DOLLS</a></li>
                </ul>
              </li>
              <li><a href="underConst.jsp">ABOUT US</a></li>
              <li><a href="underConst.jsp">CONTACT</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="signUp/form.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
              <li><a href="logIn/logInForm.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
          </div>
      </div>
    </nav>
       
         <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/g-o-m" 
         user="root"  password="root"/>                  
                   
         <c:forEach products="${dbselect.imgsTh}" var="imgRows">
             <div class="image">
            <%
            try
            {
                String jstlVar = (String)pageContext.getAttribute("imgRows"); 
                String imgName = String.format("F:\\bsc\\sem5\\IT\\NetBeansProjects\\JSP\\web\\images\\%s.jpg", jstlVar);
                //out.println("jstl: " + jstlVar + "  img: " + imgName);               
                BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                ImageIO.write( bImage, "jpg", baos );
                baos.flush();
                byte[] imageInByteArray = baos.toByteArray();
                baos.close();                                   
                String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
            <img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>"
            width="114" height="110" style="float: left;"/> 
            
            <sql:query var="result" dataSource="${db}">
            SELECT * FROM products WHERE Product_Img_Name= '<%= jstlVar %> ';
            </sql:query>
            
            <c:forEach var="row" products="${result.rows}">
                <tr>
                    &nbsp;&nbsp;&nbsp;Product Name: <c:out value="${row.PName}"/> <br><br>                  
                    &nbsp;&nbsp;&nbsp;Price: <c:out value="${row.Price}"/> <br><br>
                    &nbsp;&nbsp;&nbsp;Stock: <c:out value="${row.Stock_In_Count}"/> 
                </tr>
            </c:forEach>
            
            <br><br><br><br>
        <%   
            }
            catch(IOException e)
            {
                System.out.println("Error: " + e);
            }       
        %>        
        </div>
        </c:forEach>  

    </body>
</html>
