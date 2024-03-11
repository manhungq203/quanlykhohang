/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;


public class Categories {
    private int category_id;
    private String name;
    private int father_categories_id;

    public Categories() {
    }

    public Categories(int category_id, String name, int father_categories_id) {
        this.category_id = category_id;
        this.name = name;
        this.father_categories_id = father_categories_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFather_categories_id() {
        return father_categories_id;
    }

    public void setFather_categories_id(int father_categories_id) {
        this.father_categories_id = father_categories_id;
    }
    
    
    
}
