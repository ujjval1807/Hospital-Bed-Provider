

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Links ------------------------------------------------------------------------------------->
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="hosp.css">
        <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

        <title>Booking Details</title>
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

                </ul>
            </div>

        </header>
        <%
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String age = request.getParameter("age");
            String blood = request.getParameter("blood");
            String aadhaar = request.getParameter("aadhaar");
            String pan = request.getParameter("pan");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String address = request.getParameter("admit_date");
            String ward = request.getParameter("ward");
            String bed = request.getParameter("bed");
            String admit = request.getParameter("admit_date");
            String charge = request.getParameter("charge");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hbp", "root", "");
                String query = "insert into booking (name,dob,gender,age,blood,aadhaar,pan,phone,email,password,address,ward,bed,admit,charge) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(query);

                ps.setString(1, name);
                ps.setString(2, dob);
                ps.setString(3, gender);
                ps.setString(4, age);
                ps.setString(5, blood);
                ps.setString(6, aadhaar);
                ps.setString(7, pan);
                ps.setString(8, phone);
                ps.setString(9, email);
                ps.setString(10, password);
                ps.setString(11, address);
                ps.setString(12, ward);
                ps.setString(13, bed);
                ps.setString(14, admit);
                ps.setString(15, charge);

                ps.executeUpdate();

            } catch (ClassNotFoundException | SQLException e) {
                out.println(e);
            }

        %>
        <div class="list">
            <h2>Application Confirmed</h2>
            <table cellspacing="0">
                <tr>
                    <td>Name:</td>
                    <td><%=name%></td>
                </tr>

                <tr>
                    <td>D.O.B:</td>
                    <td><%=dob%></td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td><%=gender%></td>
                </tr>

                <tr>
                    <td>Age:</td>
                    <td><%=age%></td>
                </tr>

                <tr>
                    <td>Blood group:</td>
                    <td><%=blood%></td>
                </tr>

                <tr>
                    <td>Aadhaar no.:</td>
                    <td><%=aadhaar%></td>
                </tr>

                <tr>
                    <td>Pan no.:</td>
                    <td><%=pan%></td>
                </tr>

                <tr>
                    <td>Contact Details:</td>
                    <td><%=phone%></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><%=email%></td>
                </tr>

                <tr>
                    <td>Address:</td>
                    <td><%=address%></td>
                </tr>

                <tr>
                    <td>Ward:</td>
                    <td><%=ward%></td>
                </tr>

                <tr>
                    <td>Bed Type:</td>
                    <td><%=bed%></td>
                </tr>

                <tr>
                    <td>Admit date:</td>
                    <td><%=admit%></td>
                </tr>

                <tr>
                    <td>Charge :</td>
                    <td><%=charge%></td>
                </tr>
                <tr>
                    <td><a href="index.html">Back to Home</a></td>
                    <td><a href="#">Give us review</a></td>
                </tr>


            </table>
        </div>
        <footer>
            <p>All rights are reserved by Administration</p>
        </footer>
    </body>
</html>
