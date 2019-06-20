<%-- 
    Document   : profile
    Created on : 7 Nov, 2016, 3:37:48 PM
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
        <title>Oops!</title>
        
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
            <a class="navbar-brand" href="#">Logo</a>
          </div>
          
          <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
              <li class="active"><a href="home.html">Home</a></li>
              <li><a href="home.html">products</a></li>
              <li><a href="underConst.jsp">Deals</a></li>
              <li><a href="underConst.jsp">Stores</a></li>
              <li><a href="underConst.jsp">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logIn/logInForm.html"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
              <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
            </ul>
          </div>
        </div>
        </nav>
    <center>
            Page under construction!
        <h5>Come back later.</h5>
    </center>
    </body>
</html>
