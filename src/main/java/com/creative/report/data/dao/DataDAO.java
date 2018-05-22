package com.creative.report.data.dao;



import com.creative.report.data.vo.*;

import java.util.List;

public interface DataDAO {


	List<LaunchBanner> conditionNative(String condition);


	List<SelectFunction> conditionNativeAdv(SelectFunction condition);

	List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);

	List<Creative> findCreative(SubmitSelect submitSelect);
}
