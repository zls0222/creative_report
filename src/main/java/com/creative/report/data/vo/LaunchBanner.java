package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/17.
 */
public class LaunchBanner {
    private static final long serialVersionUID=1L;


    //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重


    String platform;
    String domain;
    String creative_url;
    String advertiser;
    String order_id;
    String exe_campaign_id;
    String size;
    String advertiser_cat;
    String creative_id;
    int width;
    int height;
    String type;
    String title;
    String descri;


    Long imp;
    Long click;
    Float ctr;
    Float clickContrast;
    Long cvt;
    Float cvr;
    Float cvtContrast;
    String comprehensiveWeight;


    public LaunchBanner() {
    }

    public LaunchBanner(String platform, String domain, String creative_url, String advertiser, String order_id, String exe_campaign_id, String size, String advertiser_cat, String creative_id, int width, int height, String type, String title, String descri, Long imp, Long click, Float ctr, Float clickContrast, Long cvt, Float cvr, Float cvtContrast, String comprehensiveWeight) {
        this.platform = platform;
        this.domain = domain;
        this.creative_url = creative_url;
        this.advertiser = advertiser;
        this.order_id = order_id;
        this.exe_campaign_id = exe_campaign_id;
        this.size = size;
        this.advertiser_cat = advertiser_cat;
        this.creative_id = creative_id;
        this.width = width;
        this.height = height;
        this.type = type;
        this.title = title;
        this.descri = descri;
        this.imp = imp;
        this.click = click;
        this.ctr = ctr;
        this.clickContrast = clickContrast;
        this.cvt = cvt;
        this.cvr = cvr;
        this.cvtContrast = cvtContrast;
        this.comprehensiveWeight = comprehensiveWeight;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
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

    public String getAdvertiser_cat() {
        return advertiser_cat;
    }

    public void setAdvertiser_cat(String advertiser_cat) {
        this.advertiser_cat = advertiser_cat;
    }

    public String getCreative_id() {
        return creative_id;
    }

    public void setCreative_id(String creative_id) {
        this.creative_id = creative_id;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
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

    public String getComprehensiveWeight() {
        return comprehensiveWeight;
    }

    public void setComprehensiveWeight(String comprehensiveWeight) {
        this.comprehensiveWeight = comprehensiveWeight;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LaunchBanner that = (LaunchBanner) o;

        if (width != that.width) return false;
        if (height != that.height) return false;
        if (platform != null ? !platform.equals(that.platform) : that.platform != null) return false;
        if (domain != null ? !domain.equals(that.domain) : that.domain != null) return false;
        if (creative_url != null ? !creative_url.equals(that.creative_url) : that.creative_url != null) return false;
        if (advertiser != null ? !advertiser.equals(that.advertiser) : that.advertiser != null) return false;
        if (order_id != null ? !order_id.equals(that.order_id) : that.order_id != null) return false;
        if (exe_campaign_id != null ? !exe_campaign_id.equals(that.exe_campaign_id) : that.exe_campaign_id != null)
            return false;
        if (size != null ? !size.equals(that.size) : that.size != null) return false;
        if (advertiser_cat != null ? !advertiser_cat.equals(that.advertiser_cat) : that.advertiser_cat != null)
            return false;
        if (creative_id != null ? !creative_id.equals(that.creative_id) : that.creative_id != null) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (descri != null ? !descri.equals(that.descri) : that.descri != null) return false;
        if (imp != null ? !imp.equals(that.imp) : that.imp != null) return false;
        if (click != null ? !click.equals(that.click) : that.click != null) return false;
        if (ctr != null ? !ctr.equals(that.ctr) : that.ctr != null) return false;
        if (clickContrast != null ? !clickContrast.equals(that.clickContrast) : that.clickContrast != null)
            return false;
        if (cvt != null ? !cvt.equals(that.cvt) : that.cvt != null) return false;
        if (cvr != null ? !cvr.equals(that.cvr) : that.cvr != null) return false;
        if (cvtContrast != null ? !cvtContrast.equals(that.cvtContrast) : that.cvtContrast != null) return false;
        return !(comprehensiveWeight != null ? !comprehensiveWeight.equals(that.comprehensiveWeight) : that.comprehensiveWeight != null);

    }

    @Override
    public int hashCode() {
        int result = platform != null ? platform.hashCode() : 0;
        result = 31 * result + (domain != null ? domain.hashCode() : 0);
        result = 31 * result + (creative_url != null ? creative_url.hashCode() : 0);
        result = 31 * result + (advertiser != null ? advertiser.hashCode() : 0);
        result = 31 * result + (order_id != null ? order_id.hashCode() : 0);
        result = 31 * result + (exe_campaign_id != null ? exe_campaign_id.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (advertiser_cat != null ? advertiser_cat.hashCode() : 0);
        result = 31 * result + (creative_id != null ? creative_id.hashCode() : 0);
        result = 31 * result + width;
        result = 31 * result + height;
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (descri != null ? descri.hashCode() : 0);
        result = 31 * result + (imp != null ? imp.hashCode() : 0);
        result = 31 * result + (click != null ? click.hashCode() : 0);
        result = 31 * result + (ctr != null ? ctr.hashCode() : 0);
        result = 31 * result + (clickContrast != null ? clickContrast.hashCode() : 0);
        result = 31 * result + (cvt != null ? cvt.hashCode() : 0);
        result = 31 * result + (cvr != null ? cvr.hashCode() : 0);
        result = 31 * result + (cvtContrast != null ? cvtContrast.hashCode() : 0);
        result = 31 * result + (comprehensiveWeight != null ? comprehensiveWeight.hashCode() : 0);
        return result;
    }


    @Override
    public String toString() {
        return "LaunchBanner{" +
                "platform='" + platform + '\'' +
                ", domain='" + domain + '\'' +
                ", creative_url='" + creative_url + '\'' +
                ", advertiser='" + advertiser + '\'' +
                ", order_id='" + order_id + '\'' +
                ", exe_campaign_id='" + exe_campaign_id + '\'' +
                ", size='" + size + '\'' +
                ", advertiser_cat='" + advertiser_cat + '\'' +
                ", creative_id='" + creative_id + '\'' +
                ", width=" + width +
                ", height=" + height +
                ", type='" + type + '\'' +
                ", title='" + title + '\'' +
                ", descri='" + descri + '\'' +
                ", imp=" + imp +
                ", click=" + click +
                ", ctr=" + ctr +
                ", clickContrast=" + clickContrast +
                ", cvt=" + cvt +
                ", cvr=" + cvr +
                ", cvtContrast=" + cvtContrast +
                ", comprehensiveWeight=" + comprehensiveWeight +
                '}';
    }
}
