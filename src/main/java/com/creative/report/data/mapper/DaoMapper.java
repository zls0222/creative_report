package com.creative.report.data.mapper;



import com.creative.report.data.vo.*;

import java.util.List;

public interface DaoMapper {


    List<LaunchBanner> conditionNative(String condition);
    Float conditionCtrAvg(String condition);
    Float conditionCvrAvg(String condition);

    List<SelectFunction> conditionNativeAdv(SelectFunction condition);

    List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);

    List<Creative> findCreative(SubmitSelect submitSelect);



}
