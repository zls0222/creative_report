package com.creative.report.data.vo;

/**
 * Created by Administrator on 2018/5/25.
 */
public class MyMap {

    private static final long serialVersionUID=1L;

    String val1;
    Float value;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getVal1() {
        return val1;
    }

    public void setVal1(String val1) {
        this.val1 = val1;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MyMap myMap = (MyMap) o;

        if (val1 != null ? !val1.equals(myMap.val1) : myMap.val1 != null) return false;
        return !(value != null ? !value.equals(myMap.value) : myMap.value != null);

    }

    @Override
    public int hashCode() {
        int result = val1 != null ? val1.hashCode() : 0;
        result = 31 * result + (value != null ? value.hashCode() : 0);
        return result;
    }


    @Override
    public String toString() {
        return "MyMap{" +
                "val1='" + val1 + '\'' +
                ", value=" + value +
                '}';
    }
}
