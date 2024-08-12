package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.OrderService;
import org.example.entity.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class OrderController {

    @Resource
    private OrderService orderService;

    @RequestMapping("/selectAllOrder")
    public ModelAndView selectAllOrder() {
        List<Order> orderList = orderService.selectAllOrder();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orderList", orderList);
        modelAndView.setViewName("orderAllList");
        return modelAndView;
    }
}
