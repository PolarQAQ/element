package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.OrderService;
import org.example.entity.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class orderStateController {
    @Resource
    OrderService orderService;

    @RequestMapping("/orderState")
    public ModelAndView orderState(){
        ModelAndView modelAndView = new ModelAndView();
       List<Order> orderStateListNo = orderService.selectOrderByStates(0);
       List<Order> orderStateListYes = orderService.selectOrderByStates(1);
       modelAndView.addObject("orderStateListNo", orderStateListNo);
       modelAndView.addObject("orderStateListYes", orderStateListYes);
       modelAndView.setViewName("orderList");
       return modelAndView;
    }

    @RequestMapping("/orderStateDetailed")
    public ModelAndView orderStateDetailed(Integer orderId){
        //order中的list存储了该订单的细节
        Order order = orderService.getOrderById(orderId);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("order", order);
        return modelAndView;
    }
}
