package com.imall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.imall.common.Const;
import com.imall.common.ResponseCode;
import com.imall.common.ServerResponse;
import com.imall.dao.AdMapper;
import com.imall.pojo.Ad;
import com.imall.pojo.Ad;
import com.imall.service.IAdService;
import com.imall.util.DateTimeUtil;
import com.imall.util.PropertiesUtil;
import com.imall.vo.AdDetailVo;
import com.imall.vo.AdListVo;
import com.imall.vo.AdDetailVo;
import com.imall.vo.AdListVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Lenovo on 2017/10/17.
 */
@Service("IAdService")
public class AdServiceImpl implements IAdService{

    @Autowired
    private AdMapper adMapper;

    public ServerResponse saveOrUpdateAd(Ad ad){
        if(ad != null)
        {
            if(ad.getId()!=null){
                int rowCount = adMapper.updateByPrimaryKey(ad);
                if(rowCount > 0){
                    return ServerResponse.createBySuccess("更新广告成功");
                }
                return ServerResponse.createBySuccess("更新广告失败");
            }else{
                int rowCount = adMapper.insert(ad);
                if(rowCount > 0){
                    return ServerResponse.createBySuccess("新增广告成功");
                }
                return ServerResponse.createBySuccess("新增广告失败");
            }
        }
        return ServerResponse.createByErrorMessage("添加或更新广告参数不正确");
    }
    

    public ServerResponse<AdDetailVo> adDetail(Integer id){
        if(id == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        Ad ad = adMapper.selectByPrimaryKey(id);
        if(ad == null){
            return ServerResponse.createByErrorMessage("广告已删除");
        }
        AdDetailVo adDetailVo = assembleAdDetailVo(ad);
        return ServerResponse.createBySuccess(adDetailVo);
    }

    private AdDetailVo assembleAdDetailVo(Ad ad){
        AdDetailVo adDetailVo = new AdDetailVo();
        adDetailVo.setId(ad.getId());
        adDetailVo.setAdName(ad.getAdName());
        adDetailVo.setAdLink(ad.getAdLink());
        adDetailVo.setAdCode(ad.getAdCode());
        adDetailVo.setLinkMan(ad.getLinkMan());
        adDetailVo.setLinkPhone(ad.getLinkPhone());

        adDetailVo.setImageHost(PropertiesUtil.getProperty("ftp.server.http.prefix","http://img.happymmall.com/"));


        adDetailVo.setCreateTime(DateTimeUtil.dateToStr(ad.getCreateTime()));
        adDetailVo.setUpdateTime(DateTimeUtil.dateToStr(ad.getUpdateTime()));
        return adDetailVo;
    }

    public ServerResponse<PageInfo> getAdList(int pageNum, int pageSize){
        //startPage--start
        //填充自己的sql查询逻辑
        //pageHelper-收尾
        PageHelper.startPage(pageNum,pageSize);
        List<Ad> adList = adMapper.selectList();

        List<AdListVo> adListVoList = Lists.newArrayList();
        for(Ad adItem : adList){
            AdListVo adListVo = assembleAdListVo(adItem);
            adListVoList.add(adListVo);
        }
        PageInfo pageResult = new PageInfo(adList);
        pageResult.setList(adListVoList);
        return ServerResponse.createBySuccess(pageResult);
    }

    private AdListVo assembleAdListVo(Ad ad){
        AdListVo adListVo = new AdListVo();
        adListVo.setId(ad.getId());
        adListVo.setAdName(ad.getAdName());
        adListVo.setLinkMan(ad.getLinkMan());
        adListVo.setLinkPhone(ad.getLinkPhone());

        adListVo.setImageHost(PropertiesUtil.getProperty("ftp.server.http.prefix","http://img.happymmall.com/"));
        return adListVo;
    }

    public ServerResponse<PageInfo> searchAd(String adName,Integer id,int pageNum,int pageSize){
        PageHelper.startPage(pageNum,pageSize);
        if(StringUtils.isNotBlank(adName)){
            adName = new StringBuilder().append("%").append(adName).append("%").toString();
        }
        List<Ad> adList = adMapper.selectByAdNameAndAdId(adName,id);
        List<AdListVo> adListVoList = Lists.newArrayList();
        for(Ad adItem : adList){
            AdListVo adListVo = assembleAdListVo(adItem);
            adListVoList.add(adListVo);
        }
        PageInfo pageResult = new PageInfo(adList);
        pageResult.setList(adListVoList);
        return ServerResponse.createBySuccess(pageResult);
    }


    public ServerResponse<AdDetailVo> getAdDetail(Integer id){
        if(id == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        Ad ad = adMapper.selectByPrimaryKey(id);

        AdDetailVo adDetailVo = assembleAdDetailVo(ad);
        return ServerResponse.createBySuccess(adDetailVo);
    }

    public ServerResponse<String> del(Integer id){
        if(id == null){
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        int resultCount = adMapper.deleteByPrimaryKey(id);
        if(resultCount > 0){
            return ServerResponse.createBySuccess("删除地址成功");
        }
        return ServerResponse.createByErrorMessage("删除地址失败");
    }
}
