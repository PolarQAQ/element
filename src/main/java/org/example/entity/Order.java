package org.example.entity;

import lombok.Data;

import java.util.List;

@Data
public class Order {
    public Integer orderId;
    public String userId;
    public Integer businessId;
    public String orderDate;
    public Double orderTotal;
    public Integer daId;
    public Integer orderState;

    public Integer bbusinessId;
    public String bbusinessName;
    public Double bdeliveryPrice;
    public List<OrderDetailed> list;
}
