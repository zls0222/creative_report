package com.creative.report.data.service;

import com.creative.report.data.vo.*;

import java.util.List;

public interface DataService {



	List<LaunchBanner> conditionNative(String condition,String jsp);

	List<SelectFunction> conditionNativeAdv(SelectFunction condition);

	List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);
    //条件查询
	List<LaunchBanner> findCreative(SubmitSelect submitSelect);
//查询
	List<SelectFunction> conditionTypeRecommends(SelectFunction subselect);

	List<SelectFunction> conditionTypePlatforms(SelectFunction subselect);

	List<SelectFunction> conditionTypeMedias(SelectFunction subselect);

	Boolean login(User user);
}
