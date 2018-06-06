package com.creative.report.data.dao.daoimpl;

import com.creative.report.data.dao.DataDAO;
import com.creative.report.data.mapper.DaoMapper;
import com.creative.report.data.vo.*;

import java.util.*;

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
        List<MyMap> level=new ArrayList<MyMap>();
        List<MyMap> levelMaxed=new ArrayList<MyMap>();
        List<MyMap> levelMined=new ArrayList<MyMap>();
        if(jsp.equals("creative_report")) {
            List<MyMap> advertiserAvg = daoMapper.conditionAdvAvg(oneSelect);
            List<MyMap> advertiserMax = daoMapper.conditionAdvMax(oneSelect);
            List<MyMap> advertiserMin = daoMapper.conditionAdvMin(oneSelect);
            level=advertiserAvg;
            levelMaxed=advertiserMax;
            levelMined=advertiserMin;
        }else if(jsp.equals("platform")){
            List<MyMap> platMediaAvg = daoMapper.conditionPlatMediaAvg(oneSelect);
            List<MyMap> platMediaMax = daoMapper.conditionPlatMediaMax(oneSelect);
            List<MyMap> platMediaMin = daoMapper.conditionPlatMediaMin(oneSelect);
            level=platMediaAvg;
            levelMaxed=platMediaMax;
            levelMined=platMediaMin;
        }
//        System.out.print(level.toString());
//        System.out.print("************************");
//        System.out.print(levelMaxed.toString());
//        System.out.print("************************");
//        System.out.print(levelMined.toString());

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

        HashMap<String,Float> levelAvgs=new HashMap<String,Float>();
        for(int i=0;i<level.size();i++) {
            MyMap one= level.get(i);
            levelAvgs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> levelMaxs=new HashMap<String,Float>();
        for(int i=0;i<levelMaxed.size();i++) {
            MyMap one= levelMaxed.get(i);
            levelMaxs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> levelMins=new HashMap<String,Float>();
        for(int i=0;i<levelMined.size();i++) {
            MyMap one= levelMined.get(i);
            levelMins.put(one.getVal1(),one.getValue());
        }


        for (int i = 0; i < result.size(); i++) {
            String adv=result.get(i).getAdvertiser();
            String type=result.get(i).getType();
            int width=result.get(i).getWidth();
            int height=result.get(i).getHeight();
            String platform=result.get(i).getPlatform();
            String advertiserCat=result.get(i).getAdvertiser_cat();
            String domain=result.get(i).getDomain();
            String key=adv+"^"+type+"^"+width+"×"+height;

            String thisLevel="";
            if(jsp.equals("creative_report")){
                thisLevel=advertiserCat;
            }
            else{

                thisLevel=platform+"^"+domain;
            }

            System.out.print(thisLevel);
            float levelAvg=levelAvgs.get(thisLevel);
            float levelMax=levelMaxs.get(thisLevel);
            float levelMin=levelMins.get(thisLevel);
//            System.out.print(key);
//            System.out.print(result.get(i).getCtr()-levelAvg+"&&"+levelMax+"&&"+levelAvg+"&&"+levelMin);

            if((result.get(i).getCtr()-levelAvg)>0&&(result.get(i).getCtr()-levelAvg)>(levelMax-levelAvg)*2/3){
                result.get(i).setComprehensiveWeight("★★★★★");
            }else if((result.get(i).getCtr()-levelAvg)>0&&(result.get(i).getCtr()-levelAvg)>(levelMax-levelAvg)*1/3){
                result.get(i).setComprehensiveWeight("★★★★");
            }else if((result.get(i).getCtr()-levelAvg)>0){
                result.get(i).setComprehensiveWeight("★★★");
            }else if((result.get(i).getCtr()-levelAvg)<=0&&(result.get(i).getCtr()-levelAvg)>(levelMin-levelAvg)*1/2){
                result.get(i).setComprehensiveWeight("★★");
            }else {
                result.get(i).setComprehensiveWeight("★");
            }


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

        String jsp=submitSelect.getJsp();
        OneSelect oneSelect=new OneSelect();
        oneSelect.setParam(submitSelect.getJsp());
        List<MyMap> ctr_avgss= (List<MyMap>) daoMapper.conditionCtrAvg(oneSelect);
        List<MyMap> cvr_avgss=(List<MyMap>)daoMapper.conditionCvrAvg(oneSelect);
        List<MyMap> level=new ArrayList<MyMap>();
        List<MyMap> levelMaxed=new ArrayList<MyMap>();
        List<MyMap> levelMined=new ArrayList<MyMap>();
        if(jsp.equals("creative_report")) {
            List<MyMap> advertiserAvg = daoMapper.conditionAdvAvg(oneSelect);
            List<MyMap> advertiserMax = daoMapper.conditionAdvMax(oneSelect);
            List<MyMap> advertiserMin = daoMapper.conditionAdvMin(oneSelect);
            level=advertiserAvg;
            levelMaxed=advertiserMax;
            levelMined=advertiserMin;
        }else if(jsp.equals("platform")){
            List<MyMap> platMediaAvg = daoMapper.conditionPlatMediaAvg(oneSelect);
            List<MyMap> platMediaMax = daoMapper.conditionPlatMediaMax(oneSelect);
            List<MyMap> platMediaMin = daoMapper.conditionPlatMediaMin(oneSelect);
            level=platMediaAvg;
            levelMaxed=platMediaMax;
            levelMined=platMediaMin;
        }

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
        HashMap<String,Float> levelAvgs=new HashMap<String,Float>();
        for(int i=0;i<level.size();i++) {
            MyMap one= level.get(i);
            levelAvgs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> levelMaxs=new HashMap<String,Float>();
        for(int i=0;i<levelMaxed.size();i++) {
            MyMap one= level.get(i);
            levelMaxs.put(one.getVal1(),one.getValue());
        }
        HashMap<String,Float> levelMins=new HashMap<String,Float>();
        for(int i=0;i<levelMined.size();i++) {
            MyMap one= level.get(i);
            levelMins.put(one.getVal1(),one.getValue());
        }


        for (int i = 0; i < result.size(); i++) {
            String adv=result.get(i).getAdvertiser();
            String type=result.get(i).getType();
            int width=result.get(i).getWidth();
            int height=result.get(i).getHeight();
            String advertiserCat=result.get(i).getAdvertiser_cat();
            String platform=result.get(i).getPlatform();
            String domain=result.get(i).getDomain();
            String key=adv+"^"+type+"^"+width+"×"+height;

            float ctr_avg= (float) ctr_avgs.get(key);
            float cvr_avg= (float) cvr_avgs.get(key);
            String thisLevel="";
            if(jsp.equals("creative_report")){
                thisLevel=advertiserCat;
            }
            else{
                thisLevel=platform+"^"+domain;
            }

            float levelAvg=levelAvgs.get(thisLevel);
            float levelMax=levelMaxs.get(thisLevel);
            float levelMin=levelMins.get(thisLevel);
//            System.out.print(key);
//            System.out.print(ctr_avgs.toString());
            if((result.get(i).getCtr()-levelAvg)>0&&(result.get(i).getCtr()-levelAvg)>(levelMax-levelAvg)*2/3){
                result.get(i).setComprehensiveWeight("★★★★★");
            }else if((result.get(i).getCtr()-levelAvg)>0&&(result.get(i).getCtr()-levelAvg)>(levelMax-levelAvg)*1/3){
                result.get(i).setComprehensiveWeight("★★★★");
            }else if((result.get(i).getCtr()-levelAvg)>0){
                result.get(i).setComprehensiveWeight("★★★");
            }else if((result.get(i).getCtr()-levelAvg)<=0&&(result.get(i).getCtr()-levelAvg)>(levelMin-levelAvg)*1/2){
                result.get(i).setComprehensiveWeight("★★");
            }else {
                result.get(i).setComprehensiveWeight("★");
            }








            float clickContrast=(result.get(i).getCtr()-ctr_avg)/ctr_avg;
            float cvtContrast=(result.get(i).getCtr()-cvr_avg)/cvr_avg;
            String size="";
            size+=result.get(i).getWidth();
            size+="*";
            size+=result.get(i).getHeight();
            result.get(i).setClickContrast(clickContrast);
            result.get(i).setCvtContrast(cvtContrast);
            result.get(i).setSize(size);
//            result.get(i).setComprehensiveWeight((float) 1.0);




        }
        if(submitSelect.getRecommends()!=""){
            List<LaunchBanner> star_result=new ArrayList<LaunchBanner>();
            for(int i=0;i<result.size();i++){
                if(result.get(i).getComprehensiveWeight()==submitSelect.getRecommends()){
                    star_result.add(result.get(i));
                }
            }
            return star_result;

        }else {
            return result;
        }

    }

    @Override
    public List<SelectFunction> conditionTypeRecommends(SelectFunction subselect) {
        List<SelectFunction> result=new ArrayList<SelectFunction>();
        List<LaunchBanner> result0=conditionNative(subselect.getToSelect(), subselect.getJsp());
        TreeSet sets=new TreeSet<String>();
        for(int i=0;i<result0.size();i++){
            sets.add(result0.get(i).getComprehensiveWeight());

        }
        Iterator<String> it = sets.iterator();
        while (it.hasNext()) {
            String str = it.next();
            result.add(new SelectFunction(str));
        }
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

    @Override
    public List<SelectFunction> conditionTypeDevice(SelectFunction subselect) {
        List<SelectFunction> result=daoMapper.conditionTypeDevice(subselect);
        return result;
    }
}
