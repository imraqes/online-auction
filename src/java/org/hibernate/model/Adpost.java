package org.hibernate.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Adpost {

    @Id
    @GeneratedValue
    private int id;
    private String title;
    private String details;
    private String quantity;
    private int price;
    private int increment;
    private String image;
    private String closingdate;
    private String currentdate;
    private String category;
    
    private int user_id;
    private int cat_id;
    private int enable;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    

    
    

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getClosingdate() {
        return closingdate;
    }

    public void setClosingdate(String closingdate) {
        this.closingdate = closingdate;
    }

    public String getCurrentdate() {
        return currentdate;
    }

    public void setCurrentdate(String currentdate) {
        this.currentdate = currentdate;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public int getIncrement() {
        return increment;
    }

    public void setIncrement(int increment) {
        this.increment = increment;
    }

    
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public int getEnable() {
        return enable;
    }

    public void setEnable(int enable) {
        this.enable = enable;
    }
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }  
}