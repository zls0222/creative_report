package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/14.
 */
public class SelectFunction {
    private static final long serialVersionUID=1L;
    String toSelect;
    String jsp;

    public SelectFunction() {
    }

    public SelectFunction(String toSelect) {
        this.toSelect = toSelect;
    }

    public SelectFunction(String toSelect, String jsp) {
        this.toSelect = toSelect;
        this.jsp = jsp;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getToSelect() {
        return toSelect;
    }

    public void setToSelect(String toSelect) {
        this.toSelect = toSelect;
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

        SelectFunction that = (SelectFunction) o;

        if (toSelect != null ? !toSelect.equals(that.toSelect) : that.toSelect != null) return false;
        return !(jsp != null ? !jsp.equals(that.jsp) : that.jsp != null);

    }

    @Override
    public int hashCode() {
        int result = toSelect != null ? toSelect.hashCode() : 0;
        result = 31 * result + (jsp != null ? jsp.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "SelectFunction{" +
                "toSelect='" + toSelect + '\'' +
                ", jsp='" + jsp + '\'' +
                '}';
    }
}
