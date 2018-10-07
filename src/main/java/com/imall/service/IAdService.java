package com.imall.service;

import com.github.pagehelper.PageInfo;
import com.imall.common.ServerResponse;
import com.imall.pojo.Ad;
import com.imall.vo.AdDetailVo;

/**
 * Created by Lenovo on 2017/10/17.
 */
public interface IAdService {
    ServerResponse saveOrUpdateAd(Ad ad);

    ServerResponse<AdDetailVo> adDetail(Integer id);

    ServerResponse<PageInfo> getAdList(int pageNum, int pageSize);

    ServerResponse<PageInfo> searchAd(String adName, Integer id, int pageNum, int pageSize);

    ServerResponse<AdDetailVo> getAdDetail(Integer id);

    ServerResponse<String> del(Integer id);

}
