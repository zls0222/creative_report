package com.creative.report.data.vo;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/5/9.
 */
public class Creative {
    private static final long serialVersionUID=1L;

    String order_id;
    String campaign_id;
    String sub_campaign_id;
    String exe_campaign_id;
    String advertiser;
    String advertiser_cat;
    int width;
    int height;

    String type;
    String creative_id;
    long imp;
    long click;
    float ctr;
    String creative_url;

    public Creative() {
    }

    public Creative(String order_id, String campaign_id, String sub_campaign_id, String exe_campaign_id, String advertiser, String advertiser_cat, int width, int height, String type, String creative_id, long imp, long click, float ctr, String creative_url) {
        this.order_id = order_id;
        this.campaign_id = campaign_id;
        this.sub_campaign_id = sub_campaign_id;
        this.exe_campaign_id = exe_campaign_id;
        this.advertiser = advertiser;
        this.advertiser_cat = advertiser_cat;
        this.width = width;
        this.height = height;
        this.type = type;
        this.creative_id = creative_id;
        this.imp = imp;
        this.click = click;
        this.ctr = ctr;
        this.creative_url = creative_url;
    }

    @Override
    public String toString() {
        return "Creative{" +
                "order_id='" + order_id + '\'' +
                ", campaign_id='" + campaign_id + '\'' +
                ", sub_campaign_id='" + sub_campaign_id + '\'' +
                ", exe_campaign_id='" + exe_campaign_id + '\'' +
                ", advertiser='" + advertiser + '\'' +
                ", advertiser_cat='" + advertiser_cat + '\'' +
                ", width=" + width +
                ", height=" + height +
                ", type='" + type + '\'' +
                ", creative_id='" + creative_id + '\'' +
                ", imp=" + imp +
                ", click=" + click +
                ", ctr=" + ctr +
                ", creative_url='" + creative_url + '\'' +
                '}';
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getCampaign_id() {
        return campaign_id;
    }

    public void setCampaign_id(String campaign_id) {
        this.campaign_id = campaign_id;
    }

    public String getSub_campaign_id() {
        return sub_campaign_id;
    }

    public void setSub_campaign_id(String sub_campaign_id) {
        this.sub_campaign_id = sub_campaign_id;
    }

    public String getExe_campaign_id() {
        return exe_campaign_id;
    }

    public void setExe_campaign_id(String exe_campaign_id) {
        this.exe_campaign_id = exe_campaign_id;
    }

    public String getAdvertiser() {
        return advertiser;
    }

    public void setAdvertiser(String advertiser) {
        this.advertiser = advertiser;
    }

    public String getAdvertiser_cat() {
        return advertiser_cat;
    }

    public void setAdvertiser_cat(String advertiser_cat) {
        this.advertiser_cat = advertiser_cat;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreative_id() {
        return creative_id;
    }

    public void setCreative_id(String creative_id) {
        this.creative_id = creative_id;
    }

    public long getImp() {
        return imp;
    }

    public void setImp(long imp) {
        this.imp = imp;
    }

    public long getClick() {
        return click;
    }

    public void setClick(long click) {
        this.click = click;
    }

    public float getCtr() {
        return ctr;
    }

    public void setCtr(float ctr) {
        this.ctr = ctr;
    }

    public String getCreative_url() {
        return creative_url;
    }

    public void setCreative_url(String creative_url) {
        this.creative_url = creative_url;
    }
}
















