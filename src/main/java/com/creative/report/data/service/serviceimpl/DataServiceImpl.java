package com.creative.report.data.service.serviceimpl;


import com.creative.report.data.dao.DataDAO;
import com.creative.report.data.service.DataService;
import com.creative.report.data.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DataServiceImpl implements DataService{
		
	@Autowired
	private DataDAO dataDAO;



//	@Override
//	public boolean updateCustomer(Condition condition) {
//		int count=dataDAO.conditionNative(condition);
//		if(count>0){
//			return true;
//		}
//		return false;
//	}

	@Override
	public List<LaunchBanner> conditionNative(String condition) {
		List<LaunchBanner> result=dataDAO.conditionNative(condition);

		return result;
	}

	@Override
	public List<SelectFunction> conditionNativeAdv(SelectFunction condition) {
		List<SelectFunction> result=dataDAO.conditionNativeAdv(condition);
		return result;
	}

	@Override
	public List<SelectFunction> conditionNativeIndustry(SelectFunction condition) {
		List<SelectFunction> result=dataDAO.conditionNativeIndustry(condition);
		return result;
	}

	@Override
	public List<SelectFunction> conditionNativeAdvSize(SelectFunction condition) {
		List<SelectFunction> result=dataDAO.conditionNativeAdvSize(condition);
		return result;
	}

	@Override
	public List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition) {
		List<SelectFunction> result=dataDAO.conditionNativeAdvClassify(condition);
		return result;
	}

	@Override
	public List<Creative> findCreative(SubmitSelect submitSelect) {
		List<Creative> result=dataDAO.findCreative(submitSelect);
		return result;
	}
}
