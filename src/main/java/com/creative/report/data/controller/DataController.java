package com.creative.report.data.controller;

import com.alibaba.fastjson.JSONObject;
import com.creative.report.data.service.DataService;
import com.creative.report.data.vo.Condition;
import com.creative.report.data.vo.Creative;
import com.creative.report.data.vo.SelectFunction;
import com.creative.report.data.vo.SubmitSelect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	//添加客户
	@RequestMapping("/creative")
	public @ResponseBody String showNative(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String toSelect = request.getParameter("toSelect");
		List<Creative> list = dataService.conditionNative(toSelect);
//
		String jsonStr = JSONObject.toJSONString(list);

		if (list.size()>0) {

			return jsonStr;
		}
		return jsonStr;
	}





	//显示所选创意
	@RequestMapping("/selected")
	public @ResponseBody String findCreative(SubmitSelect submitSelect,Model model) throws UnsupportedEncodingException {
//		submitSelect.setAdv(submitSelect.getAdv().getBytes("iso-8859-1"));
//		submitSelect.setIndustry(submitSelect.getIndustry().getBytes("iso-8859-1"));


		System.out.print(submitSelect.toString());
		List<Creative> findCreative = new ArrayList<Creative>();
		findCreative = dataService.findCreative(submitSelect);
		model.addAttribute("findCreative", findCreative);
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
