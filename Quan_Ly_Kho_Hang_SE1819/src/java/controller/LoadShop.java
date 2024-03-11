/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DataDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Categories;
import model.Products;

public class LoadShop extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        DataDAO d = new DataDAO();
        List<Categories> list = d.getCategoriesAll("SELECT * FROM Categories");
        List<Products> p = d.getProductsAll("SELECT p.*, h.price_cur\n"
                + "FROM Products p\n"
                + "LEFT JOIN (\n"
                + "    SELECT product_id, price_cur\n"
                + "    FROM History_update_product hup\n"
                + "    WHERE hup.date = (\n"
                + "        SELECT MAX(date) \n"
                + "        FROM History_update_product \n"
                + "        WHERE product_id = hup.product_id\n"
                + "    )\n"
                + ") h ON p.product_id = h.product_id;");
        request.setAttribute("pdata", p);
        request.setAttribute("data", list);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
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
