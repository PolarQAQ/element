package org.example.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Business;


import java.util.List;


@Mapper
public interface BusinessMapper {

    List<Business> listBusinessByOrderTypeId(Integer orderTypeId);

    @Select("select * from business where business_id=#{businessId}")
    Business listBusinessByBusinessId(Integer businessId);

    @Select("select * from business;")
    List<Business> listBusiness();
}
