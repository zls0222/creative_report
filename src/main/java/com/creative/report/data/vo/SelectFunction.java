package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/14.
 */
public class SelectFunction {
    private static final long serialVersionUID=1L;
    String toSelect;

    public SelectFunction(String toSelect) {
        this.toSelect = toSelect;
    }

    public SelectFunction() {
    }

    public String getToSelect() {
        return toSelect;
    }

    public void setToSelect(String toSelect) {
        this.toSelect = toSelect;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SelectFunction that = (SelectFunction) o;

        return toSelect.equals(that.toSelect);

    }

    @Override
    public int hashCode() {
        return toSelect.hashCode();
    }

    @Override
    public String toString() {
        return "SelectFunction{" +
                "toSelect='" + toSelect + '\'' +
                '}';
    }
}
