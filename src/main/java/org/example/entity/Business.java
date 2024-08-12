package org.example.entity;

import lombok.Data;

@Data
public class Business {

    private Integer businessId;
    private String businessName;
    private String businessAddress;
    private String businessExplain;
    private String businessImg;
    private Integer orderTypeId;
    private double startPrice;
    private double deliveryPrice;
    private String remarks;

}
