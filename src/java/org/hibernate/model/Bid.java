package org.hibernate.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Raqesh Chand
 */
@Entity
public class Bid {
    @Id @GeneratedValue
    private int id;
    private int bidAmount;
    private String title_ad;
    private String onquantity;
    private int user_bid_id;
    private String user_bid_name;
    private int adpost_id;
    private String date;
    private int status;
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getBidAmount() {
        return bidAmount;
    }

    public void setBidAmount(int bidAmount) {
        this.bidAmount = bidAmount;
    }
    
    public String getOnquantity() {
        return onquantity;
    }
    public void setOnquantity(String onquantity) {
        this.onquantity = onquantity;
    }

    public int getUser_bid_id() {
        return user_bid_id;
    }

    public void setUser_bid_id(int user_bid_id) {
        this.user_bid_id = user_bid_id;
    }

    

    public int getAdpost_id() {
        return adpost_id;
    }

    public void setAdpost_id(int adpost_id) {
        this.adpost_id = adpost_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTitle_ad() {
        return title_ad;
    }

    public void setTitle_ad(String title_ad) {
        this.title_ad = title_ad;
    }

    public String getUser_bid_name() {
        return user_bid_name;
    }

    public void setUser_bid_name(String user_bid_name) {
        this.user_bid_name = user_bid_name;
    }
    
}
