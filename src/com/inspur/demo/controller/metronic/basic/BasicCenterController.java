package com.inspur.demo.controller.metronic.basic;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * @description Metronic所有插件跳转controller
 * @author SmartMan
 *
 */
@Controller
@RequestMapping("demo/metronic/basic")
public class BasicCenterController {
	private static Log log = LogFactory.getLog(BasicCenterController.class);
	
	/**
	 * @description metronic用到的所有插件的页面的跳转中心
	 * 				把当前的url直接作为返回路径，这就需要创建的jsp和url要对应
	 * @param model
	 * @param req
	 * @return String(返回对应的jsp路径)
	 * @author SmartMan
	 */
	@RequestMapping(value = {"/**"})
	public String pluginCenter(Model model,HttpServletRequest req) {
		String lastChart = req.getServletPath();
	    String pathInfo = req.getPathInfo();
	    if (null== lastChart || lastChart=="") {
	    	lastChart = pathInfo;
	    }
		String returnPath = lastChart.substring(1,lastChart.length());
		return returnPath;
	}
	
	/**
	 * @description 获取url中最后一个/后面的字符串，
	 *              如 "http://127.0.0.1/metronic/plugin/index",返回 字符串index
	 * @param String(url)
	 * @return String
	 * @author SmartMan
	 */
	/*
	private String getUrlLastChart(String path){
		
		Pattern p = Pattern.compile("[^\\/]*$");
		Matcher m = p.matcher(path);
		String lastChart= "";
		while(m.find()){
			lastChart += m.group();
		}
		return lastChart;
		
	}*/
	public static void main(String args[]){
		Pattern p = Pattern.compile(".*");
		Matcher m = p.matcher("lambo/metronic/plugin/index");
		System.out.println(m.matches());
	}

}
