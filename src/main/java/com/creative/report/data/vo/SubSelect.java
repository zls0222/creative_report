package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/16.
 */
public class SubSelect {
    private static final long serialVersionUID=1L;
    String creativetype;
    String creativeadv;

    public String getCreativetype() {
        return creativetype;
    }

    public void setCreativetype(String creativetype) {
        this.creativetype = creativetype;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SubSelect subSelect = (SubSelect) o;

        if (creativetype != null ? !creativetype.equals(subSelect.creativetype) : subSelect.creativetype != null)
            return false;
        return !(creativeadv != null ? !creativeadv.equals(subSelect.creativeadv) : subSelect.creativeadv != null);

    }

    @Override
    public int hashCode() {
        int result = creativetype != null ? creativetype.hashCode() : 0;
        result = 31 * result + (creativeadv != null ? creativeadv.hashCode() : 0);
        return result;
    }

    public String getCreativeadv() {
        return creativeadv;
    }

    public void setCreativeadv(String creativeadv) {
        this.creativeadv = creativeadv;
    }

    @Override
    public String toString() {
        return "SubSelect{" +
                "creativetype='" + creativetype + '\'' +
                ", creativeadv='" + creativeadv + '\'' +
                '}';
    }
}
