package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Mapper.OrderDetailedMapper;
import org.example.Mapper.PaymentMapper;
import org.example.Service.OrderService;
import org.example.Service.PaymentService;
import org.example.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController {

    @Resource
    PaymentService paymentService;

    @Resource
    OrderService orderService;
    @Resource
    PaymentMapper paymentMapper;
    @Autowired
    private OrderDetailedMapper orderDetailedMapper;

    @RequestMapping("/payment")
    public ModelAndView payment(@ModelAttribute Order order) {
        Order order1 = orderService.getOrderById(order.getOrderId());
//        paymentMapper.payment(order1);
        System.out.println(order.bbusinessName);
        ModelAndView mav = new ModelAndView("payment");
        mav.addObject("order", order1);
        return mav;
    }

    @RequestMapping("/pay")
    public void  pay(@ModelAttribute Order order) {
        Order order1 = orderService.getOrderById(order.getOrderId());

        System.out.println("订单 " + order.getOrderId()  +  "支付成功！"  + '\n');
        paymentMapper.payment(order);
//        ModelAndView mav = new ModelAndView("pay");
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("order", order);
//        return mav;
    }
}
