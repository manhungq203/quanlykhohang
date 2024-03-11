/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;


public class ListProduct {
    private int listproduct_id;
    private int product_id;
    private int number;

    public ListProduct() {
    }

    public ListProduct(int listproduct_id, int product_id, int number) {
        this.listproduct_id = listproduct_id;
        this.product_id = product_id;
        this.number = number;
    }

    public int getListproduct_id() {
        return listproduct_id;
    }

    public void setListproduct_id(int listproduct_id) {
        this.listproduct_id = listproduct_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
    
    
    
    
    
}
