package com.creative.report.data.dao.daoimpl;

import com.creative.report.data.dao.DataDAO;
import com.creative.report.data.mapper.DaoMapper;
import com.creative.report.data.vo.Condition;
import com.creative.report.data.vo.Creative;

import java.util.List;

import com.creative.report.data.vo.SelectFunction;
import com.creative.report.data.vo.SubmitSelect;
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
    public List<Creative> conditionNative(String condition) {
        List<Creative> result=daoMapper.conditionNative(condition);
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
