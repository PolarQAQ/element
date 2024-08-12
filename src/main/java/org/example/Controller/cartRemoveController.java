package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.CartService;
import org.example.entity.Cart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cartRemoveController {

    @Resource
    CartService cartService;

    @RequestMapping("/cartRemove")
    public void cartRemove(@ModelAttribute Cart cart) {
        cartService.removeCart(cart);
    }
}
