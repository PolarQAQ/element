package org.example.Controller;

import jakarta.annotation.Resource;

//import org.example.Service.BusinessServiceImpl;
import org.example.Service.BusinessService;
import org.example.entity.Business;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;

@Controller

public class BusinessListController {

    @Resource
    private BusinessService businessServiceImpl;


    @RequestMapping("/businessList")
    protected ModelAndView businessListByOrderTypeId(Integer orderTypeId) {

        List<Business> businessList = businessServiceImpl.listBusinessByOrderTypeId(orderTypeId);
        ModelAndView mad = new ModelAndView("/businessList");
        mad.addObject(businessList);
//        for (Business business : businessList) {
//            System.out.println("start price" + business.getDeliveryPrice());
//        }
        return mad;

    }
}
