package com.creative.report.data.controller;

import com.alibaba.fastjson.JSONObject;
import com.creative.report.data.service.DataService;
import com.creative.report.data.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.SocketUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/creative")
public class DataController {


	@Autowired
	private DataService dataService;
	//login
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request,HttpServletResponse response) throws IOException {
//		String userName = request.getParameter("Username");
//		String passWord = request.getParameter("Password");
//
//		User user=new User(userName,passWord);
//		System.out.print(user.toString());
		Boolean loginuer=dataService.login(user);

		if(loginuer){
			return "redirect:/launch.jsp";
		}
			return "redirect:/login.jsp";



	}






	//选择不同的报表类型
	@RequestMapping("/reporttype")
	public String reportType(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String toSelect = request.getParameter("toSelect");

		String type=toSelect;
		return type;

	}


	//添加客户
	@RequestMapping("/creative")
	public @ResponseBody String showNative(HttpServletRequest request,HttpServletResponse response) throws IOException {
		System.out.print("进来了");
		String toSelect = request.getParameter("toSelect");
		String jsp = request.getParameter("jsp");
		if(jsp.equals("launch")){
			jsp="creative_report";
		}else if(jsp.equals("media")){
			jsp="platform";
		}else if(jsp.equals("recommend")){
			jsp="creative_report";
		}
		List<LaunchBanner> list=dataService.conditionNative(toSelect,jsp);
//=
		String jsonStr = JSONObject.toJSONString(list);
//		System.out.print(jsonStr);


		if (list.size()>0) {

			return jsonStr;
		}
		return jsonStr;
	}


	//选在子菜单，也就是selected
	@RequestMapping("/creative/subselect")
	public @ResponseBody String subSelected(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String toSelect = request.getParameter("creativetype");

		String jsp = request.getParameter("jsp");
		if(jsp.equals("launch")){
			jsp="creative_report";
		}else if(jsp.equals("media")){
			jsp="platform";
		}else if(jsp.equals("recommend")){
			jsp="creative_report";
		}

		String creativeadv = request.getParameter("creativeadv");
		System.out.print(toSelect+creativeadv);
		System.out.print("**************");
		SelectFunction subselect=new SelectFunction(toSelect,jsp);
		List<SelectFunction> list=new ArrayList<SelectFunction>();
		if(creativeadv.equals("advs")){
			list = dataService.conditionNativeAdv(subselect);
		}else if(creativeadv.equals("industrys")){
			list = dataService.conditionNativeIndustry(subselect);
		}else if(creativeadv.equals("sizes")){
			list = dataService.conditionNativeAdvSize(subselect);
		}else if(creativeadv.equals("classes")){
			list = dataService.conditionNativeAdvClassify(subselect);
		}
		else if(creativeadv.equals("recommends")){
			list = dataService.conditionTypeRecommends(subselect);
		}
		else if(creativeadv.equals("platforms")){
			list = dataService.conditionTypePlatforms(subselect);
		}
		else if(creativeadv.equals("medias")){
			list = dataService.conditionTypeMedias(subselect);
		}

//
		String jsonStr = JSONObject.toJSONString(list);

		if (list.size()>0) {

			return jsonStr;
		}
		return jsonStr;
	}





	//显示所选创意
	@RequestMapping("/selected")
	public @ResponseBody String findCreative(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {
//		submitSelect.setAdv(submitSelect.getAdv().getBytes("iso-8859-1"));
//		submitSelect.setIndustry(submitSelect.getIndustry().getBytes("iso-8859-1"));
		String type = request.getParameter("type");
		String adv = request.getParameter("adv");
		String industry = request.getParameter("industry");
		String size = request.getParameter("size");
		String classify = request.getParameter("classify");
		String jsp = request.getParameter("jsp");
		if(jsp.equals("launch")){
			jsp="creative_report";
		}else if(jsp.equals("media")){
			jsp="platform";
		}else if(jsp.equals("recommend")){
			jsp="creative_report";
		}


		SubmitSelect submitSelect=new SubmitSelect(type,adv,industry,size,classify,jsp);
		System.out.print(submitSelect);
//		System.out.print(submitSelect.toString());
		List<LaunchBanner> findCreative = new ArrayList<LaunchBanner>();
		findCreative = dataService.findCreative(submitSelect);
//		model.addAttribute("findCreative", findCreative);
		System.out.print(findCreative.size());
		String jsonStr = JSONObject.toJSONString(findCreative);
		if(findCreative.size()>2){
			return jsonStr;
			
		}
		return jsonStr;

	}

//
//
//
//	//删除客户
//	@RequestMapping("/delete")
//	public String delete(Long cidcard){
//		customerService.deleteCustomer(cidcard);
//		return "redirect:/customer/allCustomer";
//	}
//
//	//显示客户明细
//	@RequestMapping("/detail")
//	public String deatail(Long cidcard,HttpServletRequest request){
//		Customer customer = customerService.findCustomer(cidcard);
//		System.out.println(customer);
//		request.setAttribute("customer",customer);
//		return "/customer/customerdetail";
//	}
//
//	//更新客户
//	@RequestMapping("/update")
//	public String update(Customer customer) {
//
//		boolean flag = customerService.updateCustomer(customer);
//		if (flag) {
//			return "redirect:/customer/allCustomer";
//		}
//		return "";
//	}
//
//	//显示所有客户
//	@RequestMapping("/toList")
//	public String toList(Customer customer, Model model){
//		System.out.println(customer);
//		List<Customer> cuslist = new ArrayList<Customer>();
//		cuslist = customerService.tolist(customer);
//		System.out.println(cuslist);
//		model.addAttribute("cuslist", cuslist);
//		return "/customer/showcustomer";
//	}
}
