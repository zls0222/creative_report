package com.creative.report.data.mapper;



import com.creative.report.data.vo.Condition;
import com.creative.report.data.vo.Creative;
import com.creative.report.data.vo.SelectFunction;
import com.creative.report.data.vo.SubmitSelect;

import java.util.List;

public interface DaoMapper {


    List<Creative> conditionNative(String condition);

    List<SelectFunction> conditionNativeAdv(SelectFunction condition);

    List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);

    List<Creative> findCreative(SubmitSelect submitSelect);
}
