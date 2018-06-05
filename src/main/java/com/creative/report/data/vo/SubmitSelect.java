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

    public SubmitSelect() {
    }

    public SubmitSelect(String type, String adv, String industry, String size, String classify, String jsp) {
        this.type = type;
        this.adv = adv;
        this.industry = industry;
        this.size = size;
        this.classify = classify;
        this.jsp = jsp;
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
        return !(jsp != null ? !jsp.equals(that.jsp) : that.jsp != null);

    }

    @Override
    public int hashCode() {
        int result = type != null ? type.hashCode() : 0;
        result = 31 * result + (adv != null ? adv.hashCode() : 0);
        result = 31 * result + (industry != null ? industry.hashCode() : 0);
        result = 31 * result + (size != null ? size.hashCode() : 0);
        result = 31 * result + (classify != null ? classify.hashCode() : 0);
        result = 31 * result + (jsp != null ? jsp.hashCode() : 0);
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
                '}';
    }
}
