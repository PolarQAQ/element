package org.example.Mapper;

import org.apache.ibatis.annotations.*;
import org.example.entity.Cart;

import java.util.List;

@Mapper
public interface CartMapper {

    @Insert("insert into cart (food_id, business_id, user_id, quantity) values (#{foodId}, #{businessId}, #{userId}, 1)")
    void addCart(Cart cart);

//    @Update("UPDATE cart SET food_id = #{foodId}, business_id = #{businessId}, user_id = #{userId}, quantity = #{quantity} WHERE cart_id = #{foodId}")
    void updateCart(Cart cart);

//    @Delete("DELETE FROM cart WHERE cart.cart_id = #{foodId} and cart.business_id=#{businessId} and cart.user_id=#{userId}")
    void deleteCart(Cart cart);

//        @Select("select c.*,\n" +
//            "       f.food_id          ffoodId,\n" +
//            "       f.food_name        ffoodName,\n" +
//            "       f.food_explain     ffoodExplain,\n" +
//            "       f.food_img         ffoodImg,\n" +
//            "       f.food_price       ffoodPrice,\n" +
//            "       f.business_id      foodbusinessId,\n" +
//            "       f.remarks          fremarks,\n" +
//            "       b.business_id      bbusinessId,\n" +
//            "       b.business_name    bbusinessName,\n" +
//            "       b.business_address bbusinessAddress,\n" +
//            "       b.business_explain bbusinessExplain,\n" +
//            "       b.business_img     bbsinessImg,\n" +
//            "       b.order_type_id    borderTypeId,\n" +
//            "       b.start_price      bstartPrice,\n" +
//            "       b.delivery_price   bdliveryPrice,\n" +
//            "       b.remarks           bremarks\n" +
//            "from cart c\n" +
//            "         left join food f on c.food_id = f.food_id\n" +
//            "         left join business b on b.business_id = c.business_id\n" +
//            "where c.user_id = #{userId}")
////    @Select("select * from cart where food_id=1")
    List<Cart> selectCart(Cart cart);
}
