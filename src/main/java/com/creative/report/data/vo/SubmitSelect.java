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


    public SubmitSelect() {
    }


    public SubmitSelect(String type, String adv, String industry, String size, String classify) {
        this.type = type;
        this.adv = adv;
        this.industry = industry;
        this.size = size;
        this.classify = classify;
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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SubmitSelect that = (SubmitSelect) o;

        if (type != null ? !type.equals(that.type) : that.type != null) return false;
        if (adv != null ? !adv.equals(that.adv) : that.adv != null) return false;
        if (industry != null ? !industry.equals(that.industry) : that.industry != null) return false;
        if (size != null ? !size.equals(that.size) : that.size != null) return false;
        return !(classify != null ? !classify.equals(that.classify) : that.classify != null);

    }

    @Override
    public int hashCode() {
        int result = type != null ? type.hashCode() : 0;
        result = 31 * result + (adv != null ? adv.hashCode() : 0);
        result = 31 * result + (industry != null ? industry.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (classify != null ? classify.hashCode() : 0);
        return result;
    }
}
