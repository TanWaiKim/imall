package com.imall.dao;

import com.imall.pojo.Ad;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Lenovo on 2017/10/17.
 */
public interface AdMapper {

    int insert(Ad ad);

    int deleteByPrimaryKey(Integer id);

    Ad selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(Ad ad);

    List<Ad> selectList();

    List<Ad> selectByAdNameAndAdId(@Param("adName") String adName, @Param("id") Integer id);



}
