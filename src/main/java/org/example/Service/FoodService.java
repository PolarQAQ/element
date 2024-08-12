package org.example.Service;

import jakarta.annotation.Resource;
import org.example.Mapper.FoodMapper;
import org.example.entity.Food;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodService {

    @Resource
    FoodMapper foodMapper;

    public List<Food> getFoodList(Integer businessId) {

        return foodMapper.findByBusinessId(businessId);
    }
}
