package org.example.Service;

import org.example.Mapper.OrderDetailedMapper;
import org.example.entity.Cart;

import java.util.List;

import jakarta.annotation.Resource;
import org.example.Mapper.CartMapper;
import org.example.Mapper.OrderMapper;
import org.example.entity.Order;
import org.example.entity.OrderDetailed;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderService {

    @Resource
    OrderMapper orderMapper;

    @Resource
    CartMapper cartMapper;

    @Resource
    OrderDetailedMapper orderDetailedMapper;

    //开启一个事务
    @Transactional
    public int createOrder(Order order) {
        /*
         1.* 查询当前用户购物车中当前商家的所有食品（目的是放入订单明细中）
         */
        Cart cart = new Cart();
        cart.setUserId(order.getUserId());
        cart.setBusinessId(order.getBusinessId());
        List<Cart> cartList = cartMapper.selectCart(cart);
        /*
        2.创建订单并获取订单编号
         */
        Order order1 = new Order();
        order1.setUserId(order.getUserId());
        order1.setBusinessId(order.getBusinessId());
        order1.setDaId(order.getDaId());
        order1.setOrderTotal(order.getOrderTotal());

        orderMapper.saveOrder(order);

//        在mybatis框架中设置了返回自增长主键
        Integer orderId = order.getOrderId();
        /*
        TODO 此处可能会有bug
        3.向明细表中批量添加数据
         */
//        List<OrderDetailed> orderDetailedList = new ArrayList<OrderDetailed>();
        for(Cart c: cartList) {
            OrderDetailed od = new OrderDetailed();
            od.setOrderId(orderId);
            od.setFoodId(c.getFoodId());
            od.setQuantity(c.getQuantity());
//            orderDetailedList.add(od);
            //效率低但容易操作
            orderDetailedMapper.saveOrderDetailed(od);
            cartMapper.deleteCart(c);
        }
        /*
        清空购物车（当前用户，当前商家）
         */

        return orderId;
    }

    public Order getOrderById(int orderId) {
        Order order = orderMapper.getOrderById(orderId);
        List<OrderDetailed> list = orderDetailedMapper.getOrderDetailedByOrderId(orderId);
        order.setList(list);
        return order;
    }

    public List<Order> selectOrderByStates(int stateId) {
       List<Order> orderList = orderMapper.selectOrderByStatus(stateId);
        if(orderList != null && !orderList.isEmpty()) {
            for(Order order : orderList) {
                List<OrderDetailed> listDetailed = orderDetailedMapper.getOrderDetailedByOrderId(order.getOrderId());
                order.setList(listDetailed);
            }
        }
        return orderList;
    }

    public List<Order> selectAllOrder() {
        List<Order> orderList = orderMapper.selectAllOrder();
        if(orderList != null && !orderList.isEmpty()) {
            for(Order order : orderList) {
                List<OrderDetailed> listDetailed = orderDetailedMapper.getOrderDetailedByOrderId(order.getOrderId());
                order.setList(listDetailed);
            }
        }
        return orderList;
    }

}
