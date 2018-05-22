package com.creative.report.data.service;

import com.creative.report.data.vo.*;

import java.util.List;

public interface DataService {



	List<LaunchBanner> conditionNative(String condition);

	List<SelectFunction> conditionNativeAdv(SelectFunction condition);

	List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);
    //条件查询
	List<Creative> findCreative(SubmitSelect submitSelect);
}
