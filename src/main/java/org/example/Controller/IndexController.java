package org.example.Controller;

import jakarta.annotation.Resource;
import org.example.Service.BusinessService;
import org.example.entity.Business;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/*
初始页面
 */
@Controller("/")
public class IndexController {

    @Resource
    BusinessService businessService;

    @RequestMapping("/")
    public ModelAndView index() {

        List<Business> list = businessService.listBusiness();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("list", list);
        return modelAndView;
    }

}
