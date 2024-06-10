

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/hbp2", "root", "");
                String query = "insert into booking2(name,dob,gender,age,blood,aadhaar,pan,phone,email,password,address,ward,bed,admit,charge) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
