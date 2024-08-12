package org.example.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Order;

import java.util.List;

@Mapper
public interface OrderMapper {
    public int saveOrder(Order order);
    public Order getOrderById(Integer orderId);
    public List<Order> selectOrderByStatus(Integer stateId);

    List<Order> selectAllOrder();
//
//    @Select("select")
//    List<Order> selectAll();
}
