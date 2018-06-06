package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/14.
 */
public class SubmitSelect {
    private static final long serialVersionUID=1L;

    String type;
    String adv;
    String industry;
    String size;
    String classify;
    String jsp;
    String device;
    String recommends;
    String platforms;
    String medias;

    public SubmitSelect() {
    }

    public SubmitSelect(String type, String adv, String industry, String size, String classify, String jsp, String device, String recommends, String platforms, String medias) {
        this.type = type;
        this.adv = adv;
        this.industry = industry;
        this.size = size;
        this.classify = classify;
        this.jsp = jsp;
        this.device = device;
        this.recommends = recommends;
        this.platforms = platforms;
        this.medias = medias;
    }


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAdv() {
        return adv;
    }

    public void setAdv(String adv) {
        this.adv = adv;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getJsp() {
        return jsp;
    }

    public void setJsp(String jsp) {
        this.jsp = jsp;
    }

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device;
    }

    public String getRecommends() {
        return recommends;
    }

    public void setRecommends(String recommends) {
        this.recommends = recommends;
    }

    public String getPlatforms() {
        return platforms;
    }

    public void setPlatforms(String platforms) {
        this.platforms = platforms;
    }

    public String getMedias() {
        return medias;
    }

    public void setMedias(String medias) {
        this.medias = medias;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SubmitSelect that = (SubmitSelect) o;

        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (adv != null ? !adv.equals(that.adv) : that.adv != null) return false;
        if (industry != null ? !industry.equals(that.industry) : that.industry != null) return false;
        if (size != null ? !size.equals(that.size) : that.size != null) return false;
        if (classify != null ? !classify.equals(that.classify) : that.classify != null) return false;
        if (jsp != null ? !jsp.equals(that.jsp) : that.jsp != null) return false;
        if (device != null ? !device.equals(that.device) : that.device != null) return false;
        if (recommends != null ? !recommends.equals(that.recommends) : that.recommends != null) return false;
        if (platforms != null ? !platforms.equals(that.platforms) : that.platforms != null) return false;
        return !(medias != null ? !medias.equals(that.medias) : that.medias != null);

    }

    @Override
    public int hashCode() {
        int result = type != null ? type.hashCode() : 0;
        result = 31 * result + (adv != null ? adv.hashCode() : 0);
        result = 31 * result + (industry != null ? industry.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (classify != null ? classify.hashCode() : 0);
        result = 31 * result + (jsp != null ? jsp.hashCode() : 0);
        result = 31 * result + (device != null ? device.hashCode() : 0);
        result = 31 * result + (recommends != null ? recommends.hashCode() : 0);
        result = 31 * result + (platforms != null ? platforms.hashCode() : 0);
        result = 31 * result + (medias != null ? medias.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "SubmitSelect{" +
                "type='" + type + '\'' +
                ", adv='" + adv + '\'' +
                ", industry='" + industry + '\'' +
                ", size='" + size + '\'' +
                ", classify='" + classify + '\'' +
                ", jsp='" + jsp + '\'' +
                ", device='" + device + '\'' +
                ", recommends='" + recommends + '\'' +
                ", platforms='" + platforms + '\'' +
                ", medias='" + medias + '\'' +
                '}';
    }
}
