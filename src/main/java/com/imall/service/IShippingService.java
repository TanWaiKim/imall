package com.imall.service;

import com.github.pagehelper.PageInfo;
import com.imall.common.ServerResponse;
import com.imall.pojo.Shipping;

/**
 * Created by TanWaiKim
 */
public interface IShippingService {

    ServerResponse add(Integer userId, Shipping shipping);
    ServerResponse<String> del(Integer userId, Integer shippingId);
    ServerResponse update(Integer userId, Shipping shipping);
    ServerResponse<Shipping> select(Integer userId, Integer shippingId);
    ServerResponse<PageInfo> list(Integer userId, int pageNum, int pageSize);

}
