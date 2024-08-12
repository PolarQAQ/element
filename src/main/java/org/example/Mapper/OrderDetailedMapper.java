package org.example.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.entity.OrderDetailed;

import java.util.List;

@Mapper
public interface OrderDetailedMapper {
    public int saveOrderDetailed(OrderDetailed orderDetailed);
    public List<OrderDetailed> getOrderDetailedByOrderId(int orderId);
}
