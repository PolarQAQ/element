package org.example.Service;


import jakarta.annotation.Resource;



import org.example.Mapper.BusinessMapper;
import org.example.entity.Business;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessService {

    @Resource
    private BusinessMapper businessMapper;

    public List<Business> listBusinessByOrderTypeId(Integer orderTypeId) {

        return businessMapper.listBusinessByOrderTypeId(orderTypeId);
    }

    public Business listBusinessByBusinessId(Integer businessId) {
        return businessMapper.listBusinessByBusinessId(businessId);
    }

    public List<Business> listBusiness() {
        return businessMapper.listBusiness();
    }
}
