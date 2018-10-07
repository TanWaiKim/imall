package com.imall.service;

import com.imall.common.ServerResponse;
import com.imall.vo.CartVo;

/**
 * Created by TanWaiKim
 */
public interface ICartService {
    ServerResponse<CartVo> add(Integer userId, Integer productId, Integer count);
    ServerResponse<CartVo> update(Integer userId, Integer productId, Integer count);
    ServerResponse<CartVo> deleteProduct(Integer userId, String productIds);

    ServerResponse<CartVo> list(Integer userId);
    ServerResponse<CartVo> selectOrUnSelect(Integer userId, Integer productId, Integer checked);
    ServerResponse<Integer> getCartProductCount(Integer userId);
}
