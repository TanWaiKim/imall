package com.imall.pojo;

import java.util.Date;

/**
 * Created by Lenovo on 2017/10/17.
 */
public class Ad {
    private Integer id;

    private String adName;

    private String adLink;

    private String adCode;

    private String linkMan;

    private String linkPhone;

    private Date createTime;

    private Date updateTime;

    public Ad(Integer id, String adName, String adLink, String adCode, String linkMan, String linkPhone, Date createTime, Date updateTime) {
        this.id = id;
        this.adName = adName;
        this.adLink = adLink;
        this.adCode = adCode;
        this.linkMan = linkMan;
        this.linkPhone = linkPhone;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Ad() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdName() {
        return adName;
    }

    public void setAdName(String adName) {
        this.adName = adName;
    }

    public String getAdLink() {
        return adLink;
    }

    public void setAdLink(String adLink) {
        this.adLink = adLink;
    }

    public String getAdCode() {
        return adCode;
    }

    public void setAdCode(String adCode) {
        this.adCode = adCode;
    }

    public String getLinkMan() {
        return linkMan;
    }

    public void setLinkMan(String linkMan) {
        this.linkMan = linkMan;
    }

    public String getLinkPhone() {
        return linkPhone;
    }

    public void setLinkPhone(String linkPhone) {
        this.linkPhone = linkPhone;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
