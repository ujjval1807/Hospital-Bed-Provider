


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QuickBook</title>
        <link href="hosp.css" rel="stylesheet">

        <link rel="stylesheet" href="style.css">   
    </head>

    <body>
        <header>
            <div class="title">
                <h1>Hospital Bed Provider</h1>
            </div>
            <div class="titlebox">
                <div class="logo">
                    <img src="images/quickbooks.png" alt="logo">
                    <h2>QuickBook</h2>
                </div>
                <nav>
                    <ul>
                        <a href="index.html"><li>Home</li></a>
                        <a href="gallery.html"><li>Gallery</li></a>
                        <li>Login</li>
                        <a href="search.html"><li>Book</li></a>
                        <li>About us</li>
                    </ul>
                </nav>
            </div>
        </header>
        <%
            String hname = request.getParameter("hname");
            String location = request.getParameter("location");
         
           //Random Contact no
            Random rand = new Random();
            //Getting the number of entries from database
            Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/hbp2","root","");
                  Statement stmt = con.createStatement();
                ResultSet rs=stmt.executeQuery("select COUNT(*) from booking2");
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
