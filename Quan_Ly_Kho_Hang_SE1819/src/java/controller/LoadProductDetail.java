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
import model.Product_In_Stock;
import model.Products;

public class LoadProductDetail extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        DataDAO d = new DataDAO();
        try {
            int product_id = Integer.parseInt(id);
            List<Products> pl = d.getProductsAll("SELECT p.*, h.price_cur\n"
                    + "FROM Products p\n"
                    + " JOIN (\n"
                    + "    SELECT product_id, price_cur\n"
                    + "    FROM History_update_product hup\n"
                    + "    WHERE hup.date = (\n"
                    + "        SELECT MAX(date) \n"
                    + "        FROM History_update_product \n"
                    + "        WHERE product_id = hup.product_id\n"
                    + "    )\n"
                    + ") h ON p.product_id = h.product_id and h.product_id = " + product_id);
            Products pro = pl.get(0);
            List<Categories> cate = d.getCategoriesAll("SELECT * FROM Categories where category_id = "+ pro.getCategory_id());
            Categories out = cate.get(0);
            List<Product_In_Stock> num = d.getProductInStockAll("SELECT * FROM Product_In_Stock where product_id = "+ pro.getProduct_id());
            Product_In_Stock nump = num.get(0);
            
            
            
            request.setAttribute("product", pro);
            request.setAttribute("cate", out);
            request.setAttribute("num",nump);
            request.getRequestDispatcher("single-product.jsp").forward(request, response);
        } catch (NumberFormatException e) {
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
