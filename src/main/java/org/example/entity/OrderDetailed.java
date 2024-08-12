package org.example.entity;

import lombok.Data;

@Data
public class OrderDetailed {
    public Integer odId;
    public Integer orderId;
    public Integer foodId;
    public Integer quantity;
    public Integer ffoodId;
    public String ffoodName;
    public Double ffoodPrice;
//    public Food food;
}
