package org.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cart {
//    public Cart cart;
    public int cart_Id;
    public String userId;
    public int quantity;
    public int businessId;
    public int foodId;
    public Food food;
    public Business business;
    public Integer ffoodId;
    public String ffoodName;
    public String ffoodExplain;
    public String ffoodImg;
    public Double ffoodPrice;
    public Integer foodbusinessId;
    public String fremarks;
    public Integer bbusinessId;
    public String bbusinessName;
    public String bbusinessAddress;
    public String bbusinessExplain;
    public String bbsinessImg;
    public Integer borderTypeId;
    public Double bstartPrice;
    public Double bdliveryPrice;
    public String bremarks;

}
