package org.hibernate.view;

import com.opensymphony.xwork2.ActionSupport;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.controller.HibernateUtil;
import org.hibernate.criterion.Restrictions;
import org.hibernate.model.Adpost;
import org.hibernate.model.Bid;
import org.hibernate.model.Register;

/**
 *
 * @author Raqesh Chand
 */
public class BidAction extends ActionSupport {
    
    public BidAction() {
    }
    
    private int bid;
    private String title_ad;
    private String onquantity;
    private String usern;
    private int user_bid_id;
    private int adpost_id;
    
    Bid bd = new Bid();
    
    
    public String execute() throws Exception {
        Session session = HibernateUtil.getSession();
        session.beginTransaction();

        bd.setTitle_ad(getTitle_ad());
        bd.setOnquantity(getOnquantity());
        bd.setBidAmount(bid);
        bd.setUser_bid_name(usern);
        
        
        
        Criteria crit = session.createCriteria(Register.class);
        crit.add(Restrictions.eq("username", getUsern()));
        List<Register> list = crit.list();
        for (Register register : list) {
            user_bid_id = register.getId();
        }
        bd.setUser_bid_id(user_bid_id);

        
        Criteria cr = session.createCriteria(Adpost.class);
        cr.add(Restrictions.eq("title", getTitle_ad()));
        List<Adpost> li = cr.list();
        for (Adpost adpost : li) {
            adpost_id = adpost.getId();
        }
        
        
        bd.setAdpost_id(adpost_id);
        
        bd.setStatus(1);
        
        bd.setDate(dateFormat.format(date));
        
        session.save(bd);
        session.getTransaction().commit();
        return SUCCESS;
    }
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();


    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    

    public String getOnquantity() {
        return onquantity;
    }

    public void setOnquantity(String onquantity) {
        this.onquantity = onquantity;
    }

    public String getTitle_ad() {
        return title_ad;
    }

    public void setTitle_ad(String title_ad) {
        this.title_ad = title_ad;
    }


    public String getUsern() {
        return usern;
    }

    public void setUsern(String usern) {
        this.usern = usern;
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
    
}