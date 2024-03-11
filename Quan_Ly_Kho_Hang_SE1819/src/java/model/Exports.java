/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.math.BigDecimal;
import java.util.Date;


public class Exports {
    private int export_id;
    private int list_product_id;
    private BigDecimal price;
    private int manufacture_id;
    private Date date;
    private int employee_id;
    private String note;

    public Exports() {
    }

    public Exports(int export_id, int list_product_id, BigDecimal price, int manufacture_id, Date date, int employee_id, String note) {
        this.export_id = export_id;
        this.list_product_id = list_product_id;
        this.price = price;
        this.manufacture_id = manufacture_id;
        this.date = date;
        this.employee_id = employee_id;
        this.note = note;
    }

    public int getExport_id() {
        return export_id;
    }

    public void setExport_id(int export_id) {
        this.export_id = export_id;
    }

    public int getList_product_id() {
        return list_product_id;
    }

    public void setList_product_id(int list_product_id) {
        this.list_product_id = list_product_id;
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
