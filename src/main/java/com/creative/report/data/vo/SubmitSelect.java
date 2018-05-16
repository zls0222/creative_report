package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/14.
 */
public class SubmitSelect {


    String adv;
    String industry;
    String size;

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

    String classify;
    String type;





    @Override
    public int hashCode() {
        int result = adv.hashCode();
        result = 31 * result + industry.hashCode();
        result = 31 * result + size.hashCode();
        result = 31 * result + classify.hashCode();
        result = 31 * result + type.hashCode();
        return result;
    }

    @Override
    public String toString() {
        return "SubmitSelect{" +
                "adv='" + adv + '\'' +
                ", industry='" + industry + '\'' +
                ", size='" + size + '\'' +
                ", classify='" + classify + '\'' +
                ", type='" + type + '\'' +
                '}';
    }

    public SubmitSelect(String adv, String industry, String size, String classify, String type) {
        this.adv = adv;
        this.industry = industry;
        this.size = size;
        this.classify = classify;
        this.type = type;
    }

    public SubmitSelect() {
    }
}
