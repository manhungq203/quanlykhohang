/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;


public class Manufacture {
    private int manufacture_id;
    private String name;
    private String phone_number;
    private String address;
    private String email;

    public Manufacture() {
    }

    public Manufacture(int manufacture_id, String name, String phone_number, String address, String email) {
        this.manufacture_id = manufacture_id;
        this.name = name;
        this.phone_number = phone_number;
        this.address = address;
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    
    
    public int getManufacture_id() {
        return manufacture_id;
    }

    public void setManufacture_id(int manufacture_id) {
        this.manufacture_id = manufacture_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
}
