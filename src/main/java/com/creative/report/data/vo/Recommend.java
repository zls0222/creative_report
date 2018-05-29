package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/28.
 */
public class Recommend {

    private static final long serialVersionUID=1L;


    //选择	广告主	订单	计划	分类	尺寸	类型	创意分类	创意	曝光	点击	点击率	对比值	转化	转化率	对比值	综合权重

    String creative_url;
    String size;

    Long imp;
    Long click;
    Float ctr;
    Long cvt;
    Float cvr;
    String RecommendationDegree;

    public Recommend() {
    }


    public Recommend(String creative_url, String size, Long imp, Long click, Float ctr, Long cvt, Float cvr, String recommendationDegree) {
        this.creative_url = creative_url;
        this.size = size;
        this.imp = imp;
        this.click = click;
        this.ctr = ctr;
        this.cvt = cvt;
        this.cvr = cvr;
        RecommendationDegree = recommendationDegree;
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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
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

    public String getRecommendationDegree() {
        return RecommendationDegree;
    }

    public void setRecommendationDegree(String recommendationDegree) {
        RecommendationDegree = recommendationDegree;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Recommend recommend = (Recommend) o;

        if (creative_url != null ? !creative_url.equals(recommend.creative_url) : recommend.creative_url != null)
            return false;
        if (size != null ? !size.equals(recommend.size) : recommend.size != null) return false;
        if (imp != null ? !imp.equals(recommend.imp) : recommend.imp != null) return false;
        if (click != null ? !click.equals(recommend.click) : recommend.click != null) return false;
        if (ctr != null ? !ctr.equals(recommend.ctr) : recommend.ctr != null) return false;
        if (cvt != null ? !cvt.equals(recommend.cvt) : recommend.cvt != null) return false;
        if (cvr != null ? !cvr.equals(recommend.cvr) : recommend.cvr != null) return false;
        return !(RecommendationDegree != null ? !RecommendationDegree.equals(recommend.RecommendationDegree) : recommend.RecommendationDegree != null);

    }

    @Override
    public int hashCode() {
        int result = creative_url != null ? creative_url.hashCode() : 0;
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (imp != null ? imp.hashCode() : 0);
        result = 31 * result + (click != null ? click.hashCode() : 0);
        result = 31 * result + (ctr != null ? ctr.hashCode() : 0);
        result = 31 * result + (cvt != null ? cvt.hashCode() : 0);
        result = 31 * result + (cvr != null ? cvr.hashCode() : 0);
        result = 31 * result + (RecommendationDegree != null ? RecommendationDegree.hashCode() : 0);
        return result;
    }


    @Override
    public String toString() {
        return "Recommend{" +
                "creative_url='" + creative_url + '\'' +
                ", size='" + size + '\'' +
                ", imp=" + imp +
                ", click=" + click +
                ", ctr=" + ctr +
                ", cvt=" + cvt +
                ", cvr=" + cvr +
                ", RecommendationDegree='" + RecommendationDegree + '\'' +
                '}';
    }
}
