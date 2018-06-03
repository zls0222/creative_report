package com.creative.report.data.mapper;



import com.creative.report.data.vo.*;

import java.util.HashMap;
import java.util.List;

public interface DaoMapper {


    List<LaunchBanner> conditionNative(String condition);
    List<MyMap> conditionCtrAvg();
    List<MyMap> conditionCvrAvg();

    List<SelectFunction> conditionNativeAdv(SelectFunction condition);

    List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

    List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);

    List<LaunchBanner> findCreative(SubmitSelect submitSelect);


    List<SelectFunction> conditionTypePlatforms(SelectFunction subselect);

    List<SelectFunction> conditionTypeMedias(SelectFunction subselect);

    List<SelectFunction> conditionTypeRecommends(SelectFunction subselect);

    List<User> login(User user);
}
