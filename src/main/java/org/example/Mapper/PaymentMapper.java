package org.example.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.example.entity.Order;

@Mapper
public interface PaymentMapper {
    @Update("update `order` set order_state = 1 where order_id=#{orderId}")
    void payment(Order order);
}
