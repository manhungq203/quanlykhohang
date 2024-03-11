/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.math.BigDecimal;
import java.util.Date;


public class Imports {
    private int import_id;
    private int product_id;
    private int quantity;
    private BigDecimal price;
    private int manufacture_id;
    private Date date;
    private int employee_id;
    private String note;

    public Imports() {
    }

    public Imports(int import_id, int product_id, int quantity, BigDecimal price, int manufacture_id, Date date, int employee_id, String note) {
        this.import_id = import_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.price = price;
        this.manufacture_id = manufacture_id;
        this.date = date;
        this.employee_id = employee_id;
        this.note = note;
    }

    public int getImport_id() {
        return import_id;
    }

    public void setImport_id(int import_id) {
        this.import_id = import_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getManufacture_id() {
        return manufacture_id;
    }

    public void setManufacture_id(int manufacture_id) {
        this.manufacture_id = manufacture_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    
    
    
    
    
}
