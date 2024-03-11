/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.math.BigDecimal;
import java.util.Date;


public class History_update_Product {
    private int history_update_id;
    private int product_id;
    private int employee_id;
    private BigDecimal price_current;
    private Date date;
    private String content;

    public History_update_Product() {
    }

    public History_update_Product(int history_update_id, int product_id, int employee_id, BigDecimal price_current, Date date, String content) {
        this.history_update_id = history_update_id;
        this.product_id = product_id;
        this.employee_id = employee_id;
        this.price_current = price_current;
        this.date = date;
        this.content = content;
    }

    public int getHistory_update_id() {
        return history_update_id;
    }

    public void setHistory_update_id(int history_update_id) {
        this.history_update_id = history_update_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public BigDecimal getPrice_current() {
        return price_current;
    }

    public void setPrice_current(BigDecimal price_current) {
        this.price_current = price_current;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
    
    
}
