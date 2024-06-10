/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package USER;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Solanki
 */
public class Userservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Userservlet</title>");
            out.println("</head>");
            out.println("<body>");

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
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "");
                String query = "insert into user_test(name,dob,gender,age,blood,aadhaar,pan,phone,email,password,address,ward,bed,admit,charge) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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

                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select COUNT(*) from user_test");
                rs.next();
                int Booked = rs.getInt("COUNT(*)");
//    request.setAttribute("Booked", Booked);
//     RequestDispatcher rd = 
//             request.getRequestDispatcher("hosp.jsp");
//       rd.forward(request, response);
                HttpSession session = request.getSession();
                session.setAttribute("bed", Booked);
//        out.println(Booked);
//        out.println("Mission Successfull");

            } catch (ClassNotFoundException | SQLException e) {
                out.println(e);
            }
            out.println(name);
            out.println(dob);
            out.println(gender);
            out.println(age);
            out.println(blood);
            out.println(aadhaar);
            out.println(pan);
            out.println(phone);
            out.println(email);
            out.println(password);
            out.println(address);
            out.println(ward);
            out.println(bed);
            out.println(admit);
            out.println(charge);

            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
