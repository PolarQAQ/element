package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.OrderService;
import org.example.entity.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class orderCreateController {

    @Resource
    OrderService orderService;

    @RequestMapping("/orderCreate")
    public ModelAndView orderCreate(Order order) {
        int orderId = orderService.createOrder(order);

        Order order1 = orderService.getOrderById(orderId);

        ModelAndView mav = new ModelAndView();
        mav.addObject("order", order1);
        mav.setViewName("payment");
//        mav.addObject("order", order);
        return mav;
    }

//    @RequestMapping("/orderPay")
//    public ModelAndView orderPay(Order order) {
////        int orderId = orderService.createOrder(order);
//
////        Order order1 = orderService.getOrderById(order.orderId);
//        orderService.
//        ModelAndView mav = new ModelAndView();
////        mav.addObject("order", order1);
//        mav.setViewName("payment");
////        mav.addObject("order", order);
//        return mav;
//    }

}
