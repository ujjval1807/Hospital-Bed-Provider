
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Links ------------------------------------------------------------------------------------->
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="hosp.css">
    <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

    <title>Hospital</title>
</head>


<body>
    <header class="fullmainheader">

        <div class="companylogo">
            <img src="Images/LOGO.png" alt="">
        </div>

        <div class="navbar">
            <ul>
                <li class="link">
                    <a href="index.html">
                        HOME
                    </a>
                </li>
                <li class="link">
                    <a href="Booking.html">
                        BOOKING
                    </a>
                </li>
                 <li class="link">
                    <a href="gallery.html">
                        GALLERY
                    </a>
                </li>
                
                <li class="link">
                    <a href="About Us.html">
                        ABOUT US
                    </a>
                </li>
                </li>
            </ul>
        </div>

    </header>
        <%
            String hname = request.getParameter("hname");
            String location = request.getParameter("location");
         
           //Random Contact no
            Random rand = new Random();
            //Getting the number of entries from database
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hbp","root","");
                  Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery("select COUNT(*) from booking");
                rs.next();
                int booked_bed = rs.getInt("COUNT(*)");
                int total_bed = 100;
            int empty_bed= total_bed-booked_bed;
           int contact = rand.nextInt((99999900) + 10);
          
             
        %>

        <form action="register.jsp" method="post">
            <div class="list">
                <h2>Hospital Details</h2>
                <table cellspacing="0">
                    <tr>
                        <td>Hospital Name :</td>
                        <td><%=hname%></td>
                    </tr>
                    <tr>
                        <td>Location:</td>
                        <td><%=location%></td>
                    </tr>
                    <tr>
                        <td>Phone no. : </td>
                        <td><%=contact%></td>
                    </tr>
                    <tr>
                        <td>Total Beds:</td>
                        <td><%=total_bed%></td>

                    </tr>
                    <tr>
                        <td>Booked Beds :</td>
                        <td><%=booked_bed%></td>

                    </tr>
                    <tr>
                        <td>Available Beds :</td>
                        <td><%=empty_bed%></td>

                    </tr>
                    <tr>
                        <td><a href="search.html">Back</a></td>
                        <td><button type ="submit" >Book</button></td>

                    </tr>
                </table>
            </div>
        </form>

        <footer>
            <p>All rights are reserved by Administration</p>
        </footer>
    </body>
</html>
