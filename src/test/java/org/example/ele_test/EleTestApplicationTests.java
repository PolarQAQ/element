package org.example.ele_test;

import jakarta.annotation.Resource;
import org.example.Service.OrderService;
import org.example.entity.Order;
import org.example.entity.OrderDetailed;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@SpringBootTest
class EleTestApplicationTests {

	@Resource
	OrderService orderService;

	@Test
	void contextLoads() {
	}

	@Test
	public void orderState(){
		ModelAndView modelAndView = new ModelAndView();
		List<Order> orderStateListNo = orderService.selectOrderByStates(0);
		List<Order> orderStateListYes = orderService.selectOrderByStates(1);
//		modelAndView.addObject("orderStateListNo", orderStateListNo);
//		modelAndView.addObject("orderStateListYes", orderStateListYes);
//		modelAndView.setViewName("orderList");
//		return modelAndView;
		for (Order order : orderStateListNo) {
			List<OrderDetailed> list = order.getList();
			for (OrderDetailed orderDetailed : list) {
				System.out.println(orderDetailed.ffoodName);
			}
		}
		for (Order order : orderStateListYes) {
			List<OrderDetailed> list = order.getList();
			for (OrderDetailed orderDetailed : list) {
				System.out.println(orderDetailed.ffoodName);
			}
		}
	}

}
