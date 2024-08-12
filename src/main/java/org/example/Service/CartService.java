package org.example.Service;

import jakarta.annotation.Resource;
import org.example.Mapper.CartMapper;
import org.example.Mapper.FoodMapper;
import org.example.entity.Business;
import org.example.entity.Cart;
import org.example.entity.Food;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {

    @Resource
    CartMapper cartMapper;

    @Resource
    FoodMapper foodMapper;

    public List<Cart> selectCart(Cart cart) {

        Business business = new Business();
        Food food = new Food();

        List<Cart> listCart = cartMapper.selectCart(cart);
        if (listCart != null) {
            for (Cart cart1 : listCart) {
                food.setFoodId(cart1.getFfoodId());
                food.setFoodName(cart1.getFfoodName());
                food.setFoodExplain(cart1.getFfoodExplain());
                food.setFoodImg(cart1.getFfoodImg());
                food.setFoodPrice(cart1.getFfoodPrice());
                food.setBusinessId(cart1.getFoodbusinessId());
                food.setRemarks(cart1.getFremarks());
                cart1.setFood(food);

                business.setBusinessId(cart1.getBusinessId());
                business.setBusinessName(cart1.bbusinessName);
                business.setBusinessExplain(cart1.bbusinessExplain);
                business.setBusinessName(cart1.bbusinessName);
                business.setBusinessAddress(cart1.bbusinessAddress);
                business.setBusinessImg(cart1.bbsinessImg);
                business.setOrderTypeId(cart1.borderTypeId);
                business.setStartPrice(cart1.bstartPrice);
                business.setDeliveryPrice(cart1.bdliveryPrice);
                business.setRemarks(cart1.bremarks);

                cart1.setBusiness(business);
            }
        }
       return listCart;
    }

    public void addCart(Cart cart) {
        cartMapper.addCart(cart);
    }

    public void removeCart(Cart cart) {
        cartMapper.deleteCart(cart);
    }

    public void updateCart(Cart cart) {
        cartMapper.updateCart(cart);
    }
}
