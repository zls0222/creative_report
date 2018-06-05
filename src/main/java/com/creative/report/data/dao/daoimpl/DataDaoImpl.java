package com.creative.report.data.dao.daoimpl;

import com.creative.report.data.dao.DataDAO;
import com.creative.report.data.mapper.DaoMapper;
import com.creative.report.data.vo.*;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.One;
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
    public List<LaunchBanner> conditionNative(String condition,String jsp) {
        SelectFunction two=new SelectFunction(condition,jsp);
        List<LaunchBanner> result=daoMapper.conditionNative(two);
        OneSelect oneSelect=new OneSelect();
        oneSelect.setParam(jsp);
        List<MyMap> ctr_avgss= daoMapper.conditionCtrAvg(oneSelect);
        List<MyMap> cvr_avgss= daoMapper.conditionCvrAvg(oneSelect);

        HashMap<String,Float> ctr_avgs=new HashMap<String,Float>();
        for(int i=0;i<ctr_avgss.size();i++) {
            MyMap one= ctr_avgss.get(i);
            ctr_avgs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> cvr_avgs=new HashMap<String,Float>();
        for(int i=0;i<cvr_avgss.size();i++) {
            MyMap one= cvr_avgss.get(i);
            cvr_avgs.put(one.getVal1(),one.getValue());
        }

        for (int i = 0; i < result.size(); i++) {
            String adv=result.get(i).getAdvertiser();
            String type=result.get(i).getType();
            int width=result.get(i).getWidth();
            int height=result.get(i).getHeight();
            String key=adv+"^"+type+"^"+width+"×"+height;
            System.out.print(key);
            System.out.print(ctr_avgs.toString());

            float ctr_avg= (float) ctr_avgs.get(key);
            float cvr_avg= (float) cvr_avgs.get(key);








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
    public List<LaunchBanner> findCreative(SubmitSelect submitSelect) {

        List<LaunchBanner> result=daoMapper.findCreative(submitSelect);
        System.out.print(result.toString());


        OneSelect oneSelect=new OneSelect();
        oneSelect.setParam(submitSelect.getJsp());
        List<MyMap> ctr_avgss= (List<MyMap>) daoMapper.conditionCtrAvg(oneSelect);
        List<MyMap> cvr_avgss=(List<MyMap>)daoMapper.conditionCvrAvg(oneSelect);

        HashMap<String,Float> ctr_avgs=new HashMap<String,Float>();
        for(int i=0;i<ctr_avgss.size();i++) {
            MyMap one= ctr_avgss.get(i);
            ctr_avgs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> cvr_avgs=new HashMap<String,Float>();
        for(int i=0;i<cvr_avgss.size();i++) {
            MyMap one= cvr_avgss.get(i);
            cvr_avgs.put(one.getVal1(),one.getValue());
        }


        for (int i = 0; i < result.size(); i++) {
            String adv=result.get(i).getAdvertiser();
            String type=result.get(i).getType();
            int width=result.get(i).getWidth();
            int height=result.get(i).getHeight();
            String key=adv+"^"+type+"^"+width+"×"+height;

            float ctr_avg= (float) ctr_avgs.get(key);
            float cvr_avg= (float) cvr_avgs.get(key);








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
    public List<SelectFunction> conditionTypeRecommends(SelectFunction subselect) {
        List<SelectFunction> result=daoMapper.conditionTypeRecommends(subselect);
        return result;
    }

    @Override
    public List<SelectFunction> conditionTypePlatforms(SelectFunction subselect) {
        List<SelectFunction> result=daoMapper.conditionTypePlatforms(subselect);
        return result;
    }

    @Override
    public List<SelectFunction> conditionTypeMedias(SelectFunction subselect) {
        List<SelectFunction> result=daoMapper.conditionTypeMedias(subselect);
        return result;
    }

    @Override
    public Boolean login(User user) {
        List<User> loginUser=daoMapper.login(user);
        if(loginUser.size()==1){
            return true;
        }
            return false;
    }
}
