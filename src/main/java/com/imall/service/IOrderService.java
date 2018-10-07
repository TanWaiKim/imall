package com.imall.service;

import com.github.pagehelper.PageInfo;
import com.imall.common.ServerResponse;
import com.imall.vo.OrderVo;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/6 0006.
 */
public interface IOrderService {
    ServerResponse pay(Long orderNo, Integer userId, String path);
    ServerResponse aliCallback(Map<String,String> params);
    ServerResponse queryOrderPayStatus(Integer userId,Long orderNo);
    ServerResponse<OrderVo> createOrder(Integer userId, Integer shippingId);
    ServerResponse<String> cancel(Integer userId,Long orderNo);
    ServerResponse getOrderCartProduct(Integer userId);
    ServerResponse<OrderVo> getOrderDetail(Integer userId,Long orderNo);
    ServerResponse<PageInfo> getOrderList(Integer userId, int pageNum, int pageSize);
    ServerResponse<PageInfo> manageList(int pageNum,int pageSize);
    ServerResponse<OrderVo> manageDetail(Long orderNo);
    ServerResponse<PageInfo> manageSearch(Long orderNo,int pageNum,int pageSize);
    ServerResponse<String> manageSendGoods(Long orderNo);
    ServerResponse<PageInfo> productSearchCount(String orderBy,int pageNum,int pageSize);
    ServerResponse<PageInfo> productListCount(int pageNum,int pageSize);
    ServerResponse<PageInfo> userSearchCount(String orderBy,int pageNum,int pageSize);
    ServerResponse<PageInfo> userListCount(int pageNum,int pageSize);
}
