/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;

import java.math.BigDecimal;
import java.util.Date;


public class Salary {
    private int salary_id;
    private int employee_id;
    private BigDecimal salary;
    private BigDecimal bonus;
    private Date date;

    public Salary() {
    }

    public Salary(int salary_id, int employee_id, BigDecimal salary, BigDecimal bonus, Date date) {
        this.salary_id = salary_id;
        this.employee_id = employee_id;
        this.salary = salary;
        this.bonus = bonus;
        this.date = date;
    }

    public int getSalary_id() {
        return salary_id;
    }

    public void setSalary_id(int salary_id) {
        this.salary_id = salary_id;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public BigDecimal getSalary() {
        return salary;
    }

    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }

    public BigDecimal getBonus() {
        return bonus;
    }

    public void setBonus(BigDecimal bonus) {
        this.bonus = bonus;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    
    
}
