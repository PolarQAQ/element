package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.BusinessService;
import org.example.Service.CartService;
import org.example.entity.Business;
import org.example.entity.Cart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class orderConfirmController {

    @Resource
    BusinessService businessServiceImpl;

    @Resource
    CartService cartService;

    @RequestMapping("/orderConfirm")
    public ModelAndView businessListById(@ModelAttribute Cart cart) {

        Business business = businessServiceImpl.listBusinessByBusinessId(cart.businessId);
        ModelAndView mad = new ModelAndView("/order");
        mad.addObject(business);
//        cart.setUserId("1");
        List<Cart>listCart = cartService.selectCart(cart);
//        for (Cart cart1 : listCart) {
////            System.out.println(cart1.getFfoodName());
//        }
        if (listCart != null) {
            mad.addObject(listCart);

        }

        return mad;
    }

}
