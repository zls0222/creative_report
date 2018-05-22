package com.creative.report.data.dao.daoimpl;

import com.creative.report.data.dao.DataDAO;
import com.creative.report.data.mapper.DaoMapper;
import com.creative.report.data.vo.*;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * Created by Administrator on 2018/5/11.
 */
@Repository
public class DataDaoImpl implements DataDAO {
    @Autowired
    private DaoMapper daoMapper;
    @Override
    public List<LaunchBanner> conditionNative(String condition) {
        List<LaunchBanner> result=daoMapper.conditionNative(condition);

        Float ctr_avg=daoMapper.conditionCtrAvg(condition);
        Float cvr_avg=daoMapper.conditionCvrAvg(condition);
        for (int i = 0; i < result.size(); i++) {
            float clickContrast=(result.get(i).getCtr()-ctr_avg)/ctr_avg;
            float cvtContrast=(result.get(i).getCtr()-cvr_avg)/cvr_avg;
            String size="";
            size+=result.get(i).getWidth();
            size+="*";
            size+=result.get(i).getHeight();
            result.get(i).setClickContrast(clickContrast);
            result.get(i).setCvtContrast(cvtContrast);
            result.get(i).setSize(size);
            result.get(i).setComprehensiveWeight((float) 1.0);




        }
        return result;
    }

    @Override
    public List<SelectFunction> conditionNativeAdv(SelectFunction condition) {
        List<SelectFunction> result=daoMapper.conditionNativeAdv(condition);
        return result;
    }

    @Override
    public List<SelectFunction> conditionNativeIndustry(SelectFunction condition) {
        List<SelectFunction> result=daoMapper.conditionNativeIndustry(condition);
        return result;
    }

    @Override
    public List<SelectFunction> conditionNativeAdvSize(SelectFunction condition) {
        List<SelectFunction> result=daoMapper.conditionNativeAdvSize(condition);
        return result;
    }

    @Override
    public List<SelectFunction> conditionNativeAdvClassify(SelectFunction condition) {
        List<SelectFunction> result=daoMapper.conditionNativeAdvClassify(condition);
        return result;
    }

    @Override
    public List<Creative> findCreative(SubmitSelect submitSelect) {

        List<Creative> result=daoMapper.findCreative(submitSelect);
        System.out.print(result.toString());
            return result;
    }
}
