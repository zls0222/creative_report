package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/6/5.
 */
public class OneSelect {
    private static final long serialVersionUID=1L;

    String param;

    public OneSelect() {
    }

    public OneSelect(String param) {
        this.param = param;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OneSelect oneSelect = (OneSelect) o;

        return !(param != null ? !param.equals(oneSelect.param) : oneSelect.param != null);

    }

    @Override
    public int hashCode() {
        return param != null ? param.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "OneSelect{" +
                "param='" + param + '\'' +
                '}';
    }
}
