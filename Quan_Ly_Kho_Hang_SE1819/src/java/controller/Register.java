/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DataDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import model.Person;

public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            DataDAO d = new DataDAO();

            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            List<Person> person = d.getPersonAll("SELECT * FROM Person");
            SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
            Date date = f.parse(dob);
            boolean valid = true;
            for (Person ps : person) {
                if (ps.getUsername().equalsIgnoreCase(username)) {
                    valid = false;
                }
            }
            if (valid) {
                d.addPerson(name, address, phone, 3, date, email, username, password, 0);
                session.setAttribute("error", "Create accout success");
                response.sendRedirect("login.jsp");
            } else {
                session.setAttribute("error", "Username already exist");
                request.getRequestDispatcher("registration.jsp").forward(request, response);
                
            }
            
            
        } catch (ParseException e) {
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
