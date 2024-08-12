package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.CartService;
import org.example.entity.Cart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartUpdateController {

    @Resource
    CartService cartService;

    @RequestMapping("/cartUpdate")
    public void cartUpdate(@ModelAttribute Cart cart) {
        cartService.updateCart(cart);
    }
}
