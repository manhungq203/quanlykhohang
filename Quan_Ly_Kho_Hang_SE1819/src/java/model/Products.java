/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.math.BigDecimal;
import java.util.Date;


public class Products {
    private int product_id;
    private String name;
    private String description;
    private String image;
    private int category_id;
    private Date created_at;
    private int manufacture;
    private BigDecimal price_cur;
    public Products() {
    }

    public Products(int product_id, String name, String description, String image, int category_id, Date created_at, int manufacture, BigDecimal price_cur) {
        this.product_id = product_id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.category_id = category_id;
        this.created_at = created_at;
        this.manufacture = manufacture;
        this.price_cur = price_cur;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public int getManufacture() {
        return manufacture;
    }

    public void setManufacture(int manufacture) {
        this.manufacture = manufacture;
    }

    public BigDecimal getPrice_cur() {
        return price_cur;
    }

    public void setPrice_cur(BigDecimal price_cur) {
        this.price_cur = price_cur;
    }

    
    
    
    
}
