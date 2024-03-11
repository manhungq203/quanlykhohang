/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Cart;
import model.Categories;
import model.Exports;
import model.History_update_Product;
import model.Imports;
import model.ListProduct;
import model.Manufacture;
import model.Notifications;
import model.Order;
import model.Person;
import model.Product_In_Stock;
import model.Products;
import model.Salary;

public class DataDAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;
    List<Cart> cartList = new ArrayList<>();
    List<Categories> categoriesList = new ArrayList<>();
    List<Exports> exportsList = new ArrayList<>();
    List<History_update_Product> history_update_Product_List = new ArrayList<>();
    List<Imports> importsList = new ArrayList<>();
    List<ListProduct> listProductList = new ArrayList<>();
    List<Manufacture> manufactureList = new ArrayList<>();
    List<Notifications> notificationsList = new ArrayList<>();
    List<Order> orderList = new ArrayList<>();
    List<Person> personList = new ArrayList<>();
    List<Product_In_Stock> product_In_Stock_List = new ArrayList<>();
    List<Products> productsList = new ArrayList<>();
    List<Salary> salaryList = new ArrayList<>();
//===================================get object =======================================================

    public List<Cart> getCartAll(String s) {
        try {
            //String strSelect = "select * from Cart";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Cart c = new Cart(rs.getInt("cart_id"),
                        rs.getInt("customer_id"), rs.getInt("product_id"), rs.getInt("number"));
                cartList.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return cartList;
    }

    public List<Categories> getCategoriesAll(String s) {
        try {
            //String strSelect = "select * from Categories";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Categories c = new Categories(rs.getInt("category_id"),
                        rs.getNString("name"), rs.getInt("father_catagories_id"));
                categoriesList.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return categoriesList;
    }
    
    public List<Exports> getExportsAll(String s) {
        try {
            //String strSelect = "select * from Exports";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Exports e = new Exports(rs.getInt("export_id"),
                        rs.getInt("list_product_id"), rs.getBigDecimal("price"),
                        rs.getInt("manufacture_id"), rs.getDate("date"),
                        rs.getInt("employee_id"), rs.getString("note"));
                exportsList.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return exportsList;
    }

    public List<History_update_Product> getHistoryUpdateProductAll(String s) {
        try {
            //String strSelect = "select * from History_update_product";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                History_update_Product e = new History_update_Product(rs.getInt("history_update_id"),
                        rs.getInt("product_id"),
                        rs.getInt("employee_id"),
                        rs.getBigDecimal("price_cur"),
                        rs.getDate("date"), rs.getString("content"));

                history_update_Product_List.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return history_update_Product_List;
    }

    public List<Imports> getImportsAll(String s) {
        try {
            //String strSelect = "select * from Imports";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Imports c = new Imports(rs.getInt("import_id"),
                        rs.getInt("product_id"),
                        rs.getInt("quantity"),
                        rs.getBigDecimal("price"),
                        rs.getInt("manufacture_id"),
                        rs.getDate("date"),
                        rs.getInt("employee_id"),
                        rs.getString("note"));
                importsList.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return importsList;
    }

    public List<ListProduct> getListProductAll(String s) {
        try {
            //String strSelect = "select * from Listproduct";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                ListProduct c = new ListProduct(rs.getInt("listproduct_id"),
                        rs.getInt("product_id"),
                        rs.getInt("number"));
                listProductList.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return listProductList;
    }

    public List<Manufacture> getManufactureAll(String s) {
        try {
            //String strSelect = "select * from Manufacture";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Manufacture c = new Manufacture(rs.getInt("manufacture_id"),
                        rs.getNString("name"),
                        rs.getNString("phone_number"),
                        rs.getNString("address"),
                        rs.getNString("email"));
                manufactureList.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return manufactureList;
    }

    public List<Notifications> getNotificationsAll(String s) {
        try {
            //String strSelect = "select * from notifications";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Notifications c = new Notifications(rs.getInt("notification_id"),
                        rs.getNString("content"),
                        rs.getDate("timestamp"),
                        rs.getInt("user_id"),
                        rs.getNString("role"));

                notificationsList.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return notificationsList;
    }

    public List<Order> getOrderAll(String s) {
        try {
            //String strSelect = "select * from Orders";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Order c = new Order(rs.getInt("order_id"),
                        rs.getInt("customer_id"),
                        rs.getInt("product_id"),
                        rs.getInt("number_order"));
                orderList.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderList;
    }

    public List<Person> getPersonAll(String s) {
        try {
            //String strSelect = "select * from Person";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Person c = new Person(rs.getInt("person_id"),
                        rs.getNString("name"),
                        rs.getNString("address"),
                        rs.getNString("phone_number"),
                        rs.getInt("role"),
                        rs.getDate("dob"),
                        rs.getNString("email"),
                        rs.getNString("username"),
                        rs.getNString("password"),
                        rs.getInt("note"));
                personList.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return personList;
    }

    public List<Product_In_Stock> getProductInStockAll(String s) {
        try {
            //String strSelect = "select * from Product_In_Stock";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Product_In_Stock c = new Product_In_Stock(rs.getInt("product_id"), rs.getInt("number"));
                product_In_Stock_List.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return product_In_Stock_List;
    }

    public List<Products> getProductsAll(String s) {
        try {
            //String strSelect = "select * from Products";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Products c = new Products(rs.getInt("product_id"),
                        rs.getNString("name"),
                        rs.getNString("description"),
                        rs.getNString("image"),
                        rs.getInt("category_id"),
                        rs.getDate("created_at"),
                        rs.getInt("manufacture_id"),
                        rs.getBigDecimal("price_cur"));

                productsList.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return productsList;
    }

    public List<Salary> getSalaryAll(String s) {
        try {
            //String strSelect = "select * from Salary";
            stm = connection.prepareStatement(s);
            rs = stm.executeQuery();
            while (rs.next()) {
                Salary c = new Salary(rs.getInt("salary_id"),
                        rs.getInt("id_employee"),
                        rs.getBigDecimal("salary"),
                        rs.getBigDecimal("bonus"),
                        rs.getDate("date"));
                salaryList.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return salaryList;
    }

//========================================add object=================================================
    public void addPerson(String name, String address, String phone_number, int role, Date dob, String email, String username, String password, int note) {
        try {
            String sql = "INSERT INTO Person\n"
                    + "([name], [address], [phone_number], [role], [dob], [email], [username], [password], [note])\n"
                    + "VALUES(?,?,?,?,?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, address);
            stm.setString(3, phone_number);
            stm.setInt(4, role);
            stm.setDate(5, new java.sql.Date(dob.getTime()));
            stm.setString(6, email);
            stm.setString(7, username);
            stm.setString(8, password);
            stm.setInt(9, note);

            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void addProduct(String name, String description, String image, int category_id, Date date, int manufacture_id) {
        try {
            String sql = "INSERT INTO Products (name, description, image, category_id, created_at, manufacture_id) VALUES(?,?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, description);
            stm.setString(3, image);
            stm.setInt(4, category_id);
            stm.setDate(5, new java.sql.Date(date.getTime()));
            stm.setInt(6, manufacture_id);

            stm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        DataDAO d = new DataDAO();
        /*List<Person> personList = d.getPersonAll();
        List<Categories> categoriesList = d.getCategoriesAll();
        List<Exports> exportsList = d.getExportsAll();
        
        List<Imports> importsList = d.getImportsAll();
        List<ListProduct> listProductList = d.getListProductAll();
        List<Manufacture> manufactureList = d.getManufactureAll();
        List<Notifications> notificationsList = d.getNotificationsAll();
        List<Order> orderList = d.getOrderAll();
        List<Cart> cartList = d.getCartAll("select * from Cart");
        List<Product_In_Stock> product_In_Stock_List = d.getProductInStockAll();
         SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        Date date = f.parse("2024-03-05");
        List<Salary> salaryList = d.getSalaryAll();
        
       
         */
        // List<Products> productsList = d.getProductsAll("select * from Products");
        //d.addProduct("tủ lạnh", "ok", "ooooak", 1, date, 2);
        int product_id = 2;
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
        for (Products products : pl) {
            System.out.println(products.getName());
        }

    }

}
