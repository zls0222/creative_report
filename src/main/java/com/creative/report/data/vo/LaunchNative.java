package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/17.
 */
public class LaunchNative {
    private static final long serialVersionUID=1L;


   //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	文案	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重

    String creative_url;
    String title;
    String describe;
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

    public LaunchNative() {
    }

    public LaunchNative(String creative_url, String title, String describe, String advertiser, String order_id, String exe_campaign_id, String size, String campaign_id, Long imp, Long click, Float ctr, Float clickContrast, Long cvt, Float cvr, Float cvtContrast, Float comprehensiveWeight) {
        this.creative_url = creative_url;
        this.title = title;
        this.describe = describe;
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

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getCreative_url() {
        return creative_url;
    }

    public void setCreative_url(String creative_url) {
        this.creative_url = creative_url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
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

        LaunchNative that = (LaunchNative) o;

        if (creative_url != null ? !creative_url.equals(that.creative_url) : that.creative_url != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (describe != null ? !describe.equals(that.describe) : that.describe != null) return false;
        if (advertiser != null ? !advertiser.equals(that.advertiser) : that.advertiser != null) return false;
        if (order_id != null ? !order_id.equals(that.order_id) : that.order_id != null) return false;
        if (exe_campaign_id != null ? !exe_campaign_id.equals(that.exe_campaign_id) : that.exe_campaign_id != null)
            return false;
        if (size != null ? !size.equals(that.size) : that.size != null) return false;
        if (campaign_id != null ? !campaign_id.equals(that.campaign_id) : that.campaign_id != null) return false;
        if (imp != null ? !imp.equals(that.imp) : that.imp != null) return false;
        if (click != null ? !click.equals(that.click) : that.click != null) return false;
        if (ctr != null ? !ctr.equals(that.ctr) : that.ctr != null) return false;
        if (clickContrast != null ? !clickContrast.equals(that.clickContrast) : that.clickContrast != null)
            return false;
        if (cvt != null ? !cvt.equals(that.cvt) : that.cvt != null) return false;
        if (cvr != null ? !cvr.equals(that.cvr) : that.cvr != null) return false;
        if (cvtContrast != null ? !cvtContrast.equals(that.cvtContrast) : that.cvtContrast != null) return false;
        return !(ComprehensiveWeight != null ? !ComprehensiveWeight.equals(that.ComprehensiveWeight) : that.ComprehensiveWeight != null);

    }

    @Override
    public int hashCode() {
        int result = creative_url != null ? creative_url.hashCode() : 0;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (describe != null ? describe.hashCode() : 0);
        result = 31 * result + (advertiser != null ? advertiser.hashCode() : 0);
        result = 31 * result + (order_id != null ? order_id.hashCode() : 0);
        result = 31 * result + (exe_campaign_id != null ? exe_campaign_id.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (campaign_id != null ? campaign_id.hashCode() : 0);
        result = 31 * result + (imp != null ? imp.hashCode() : 0);
        result = 31 * result + (click != null ? click.hashCode() : 0);
        result = 31 * result + (ctr != null ? ctr.hashCode() : 0);
        result = 31 * result + (clickContrast != null ? clickContrast.hashCode() : 0);
        result = 31 * result + (cvt != null ? cvt.hashCode() : 0);
        result = 31 * result + (cvr != null ? cvr.hashCode() : 0);
        result = 31 * result + (cvtContrast != null ? cvtContrast.hashCode() : 0);
        result = 31 * result + (ComprehensiveWeight != null ? ComprehensiveWeight.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "LaunchNative{" +
                "creative_url='" + creative_url + '\'' +
                ", title='" + title + '\'' +
                ", describe='" + describe + '\'' +
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
