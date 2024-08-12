package org.example.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Food;

import java.util.List;

@Mapper
public interface FoodMapper {
    @Select("select * from food where business_id=#{businessId}")
    List<Food> findByBusinessId(int businessId);
}
