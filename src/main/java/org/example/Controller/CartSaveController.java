package org.example.Controller;

import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.Service.CartService;
import org.example.entity.Cart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartSaveController {

    @Resource
    private CartService cartService;

//    @RequestMapping(value="/cartSave", method = RequestMethod.POST)
//    public void cartSave(HttpServletRequest request, HttpServletResponse response) {
//
//        Cart cart = new Cart();
//
//        cart.setBusinessId(Integer.parseInt(request.getParameter("businessId")));
//        cart.setFoodId(Integer.parseInt(request.getParameter("foodId")));
//        cart.setUserId(request.getParameter("userId"));
//
//        cartService.addCart(cart);
//    }

    @RequestMapping("/cartSave")
    public void carSave(@ModelAttribute Cart cart) {
        cartService.addCart(cart);
        System.out.println("ok");
    }
}
