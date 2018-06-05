package com.creative.report.data.dao;



import com.creative.report.data.vo.*;

import java.util.List;

public interface DataDAO {


	List<LaunchBanner> conditionNative(String condition,String jsp);


	List<SelectFunction> conditionNativeAdv(SelectFunction condition);

	List<SelectFunction> conditionNativeIndustry(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvSize(SelectFunction condition);

	List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition);

	List<LaunchBanner> findCreative(SubmitSelect submitSelect);

	List<SelectFunction> conditionTypeRecommends(SelectFunction subselect);

	List<SelectFunction> conditionTypePlatforms(SelectFunction subselect);

	List<SelectFunction> conditionTypeMedias(SelectFunction subselect);

	Boolean login(User user);
}
