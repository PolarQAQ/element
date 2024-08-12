//package org.example.service.impl;
//
//import org.example.Mapper.FoodDao;
//import org.example.ele_test.po.Food;
//import org.example.ele_test.utils.DBUtil;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class FoodServiceImpl {
//
//
//    public List<Food> listFoodByBusinessId(Integer businessId) {
//        List<Food> list = new ArrayList<Food>();
//
//        FoodDao dao = new FoodDaoImpl();
//
//        try {
//            list = dao.listFoodByBusinessId(businessId);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            DBUtil.close();
//        }
//        return list;
//    }
//}
