package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/17.
 */
public class LaunchBanner {
    private static final long serialVersionUID=1L;


    //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重

    String creative_url;
    String advertiser;
    String order_id;
    String exe_campaign_id;
    String size;
    String campaign_id;
    Long imp;
    Long click;
    Float ctr;
    Float clickContrast;
    Long cvt;
    Float cvr;
    Float cvtContrast;
    Float ComprehensiveWeight;

    public LaunchBanner() {
    }

    public LaunchBanner(String creative_url, String advertiser, String order_id, String exe_campaign_id, String size, String campaign_id, Long imp, Long click, Float ctr, Float clickContrast, Long cvt, Float cvr, Float cvtContrast, Float comprehensiveWeight) {
        this.creative_url = creative_url;
        this.advertiser = advertiser;
        this.order_id = order_id;
        this.exe_campaign_id = exe_campaign_id;
        this.size = size;
        this.campaign_id = campaign_id;
        this.imp = imp;
        this.click = click;
        this.ctr = ctr;
        this.clickContrast = clickContrast;
        this.cvt = cvt;
        this.cvr = cvr;
        this.cvtContrast = cvtContrast;
        ComprehensiveWeight = comprehensiveWeight;
    }

    public String getCreative_url() {
        return creative_url;
    }

    public void setCreative_url(String creative_url) {
        this.creative_url = creative_url;
    }

    public String getAdvertiser() {
        return advertiser;
    }

    public void setAdvertiser(String advertiser) {
        this.advertiser = advertiser;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getExe_campaign_id() {
        return exe_campaign_id;
    }

    public void setExe_campaign_id(String exe_campaign_id) {
        this.exe_campaign_id = exe_campaign_id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getCampaign_id() {
        return campaign_id;
    }

    public void setCampaign_id(String campaign_id) {
        this.campaign_id = campaign_id;
    }

    public Long getImp() {
        return imp;
    }

    public void setImp(Long imp) {
        this.imp = imp;
    }

    public Long getClick() {
        return click;
    }

    public void setClick(Long click) {
        this.click = click;
    }

    public Float getCtr() {
        return ctr;
    }

    public void setCtr(Float ctr) {
        this.ctr = ctr;
    }

    public Float getClickContrast() {
        return clickContrast;
    }

    public void setClickContrast(Float clickContrast) {
        this.clickContrast = clickContrast;
    }

    public Long getCvt() {
        return cvt;
    }

    public void setCvt(Long cvt) {
        this.cvt = cvt;
    }

    public Float getCvr() {
        return cvr;
    }

    public void setCvr(Float cvr) {
        this.cvr = cvr;
    }

    public Float getCvtContrast() {
        return cvtContrast;
    }

    public void setCvtContrast(Float cvtContrast) {
        this.cvtContrast = cvtContrast;
    }

    public Float getComprehensiveWeight() {
        return ComprehensiveWeight;
    }

    public void setComprehensiveWeight(Float comprehensiveWeight) {
        ComprehensiveWeight = comprehensiveWeight;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LaunchBanner launchBanner = (LaunchBanner) o;

        if (!creative_url.equals(launchBanner.creative_url)) return false;
        if (!advertiser.equals(launchBanner.advertiser)) return false;
        if (!order_id.equals(launchBanner.order_id)) return false;
        if (!exe_campaign_id.equals(launchBanner.exe_campaign_id)) return false;
        if (!size.equals(launchBanner.size)) return false;
        if (!campaign_id.equals(launchBanner.campaign_id)) return false;
        if (!imp.equals(launchBanner.imp)) return false;
        if (!click.equals(launchBanner.click)) return false;
        if (!ctr.equals(launchBanner.ctr)) return false;
        if (!clickContrast.equals(launchBanner.clickContrast)) return false;
        if (!cvt.equals(launchBanner.cvt)) return false;
        if (!cvr.equals(launchBanner.cvr)) return false;
        if (!cvtContrast.equals(launchBanner.cvtContrast)) return false;
        return ComprehensiveWeight.equals(launchBanner.ComprehensiveWeight);

    }

    @Override
    public int hashCode() {
        int result = creative_url.hashCode();
        result = 31 * result + advertiser.hashCode();
        result = 31 * result + order_id.hashCode();
        result = 31 * result + exe_campaign_id.hashCode();
        result = 31 * result + size.hashCode();
        result = 31 * result + campaign_id.hashCode();
        result = 31 * result + imp.hashCode();
        result = 31 * result + click.hashCode();
        result = 31 * result + ctr.hashCode();
        result = 31 * result + clickContrast.hashCode();
        result = 31 * result + cvt.hashCode();
        result = 31 * result + cvr.hashCode();
        result = 31 * result + cvtContrast.hashCode();
        result = 31 * result + ComprehensiveWeight.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "LaunchBanner{" +
                "creative_url='" + creative_url + '\'' +
                ", advertiser='" + advertiser + '\'' +
                ", order_id='" + order_id + '\'' +
                ", exe_campaign_id='" + exe_campaign_id + '\'' +
                ", size='" + size + '\'' +
                ", campaign_id='" + campaign_id + '\'' +
                ", imp=" + imp +
                ", click=" + click +
                ", ctr=" + ctr +
                ", clickContrast=" + clickContrast +
                ", cvt=" + cvt +
                ", cvr=" + cvr +
                ", cvtContrast=" + cvtContrast +
                ", ComprehensiveWeight=" + ComprehensiveWeight +
                '}';
    }
}
