/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;


public class Product_In_Stock {
    private int product_id;
    private int number;

    public Product_In_Stock() {
    }

    public Product_In_Stock(int product_id, int number) {
        this.product_id = product_id;
        this.number = number;
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
