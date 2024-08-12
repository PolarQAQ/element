package org.example.Service;

import jakarta.annotation.Resource;
import org.apache.ibatis.annotations.Mapper;
import org.example.Mapper.PaymentMapper;
import org.example.entity.Order;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
    @Resource
    private PaymentMapper paymentMapper;
    public void paymentService(Order order) {
        paymentMapper.payment(order);
    }
}
