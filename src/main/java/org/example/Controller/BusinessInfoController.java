package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.BusinessService;
import org.example.Service.CartService;
import org.example.Service.FoodService;
import org.example.entity.Business;
import org.example.entity.Cart;
import org.example.entity.Food;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BusinessInfoController {

    @Resource
    BusinessService businessServiceImpl;

    @Resource
    FoodService foodService;

    @Resource
    CartService cartService;

    @RequestMapping("/businessInfo")
    public ModelAndView businessListById(@ModelAttribute Cart cart) {
        Business business = businessServiceImpl.listBusinessByBusinessId(cart.businessId);
        ModelAndView mad = new ModelAndView("/businessInfo");
        mad.addObject(business);

        List<Food>foodList = foodService.getFoodList(cart.businessId);
        mad.addObject(foodList);

//        cart.setUserId("1");
        List<Cart>listCart = null;
        listCart = cartService.selectCart(cart);
        mad.addObject(listCart);

        return mad;
    }
}
