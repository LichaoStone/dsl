package com.inspur.portal.controller.sqlmonitor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.lambo.framework.interceptor.monitor.SqlMonitorPlugin;
import com.inspur.lambo.framework.interceptor.monitor.SystemContext;

/**
 * 用于进行会话SQL跟踪的工具
 * 由孙福森开发，孙振移植
* @ClassName: SqlMonitor 
* @Description: 
* @author sun_zhen
* @date 2016年2月14日 上午11:38:41 
*
 */
@Controller
@RequestMapping("/system/sqlmonitor")
public class SqlMonitor {
	
	
	@RequestMapping("/query")
	public String query(Model model,HttpServletRequest req,HttpServletResponse rep) {
		

		return "portal/sqlmonitor/index";
	}
	
	
	@RequestMapping("/getSql")
	public void getSql(Model model,HttpServletRequest req,HttpServletResponse rep) {
		
		StringBuilder text=new StringBuilder("1");
		String sessionId = SystemContext.getMonitorSessionId();
		
		Map sqlMap=(Map) SqlMonitorPlugin.getLocalSessionMap(sessionId);

		if(null!=sqlMap&&sqlMap.size()>0){
			
			Map holderMap= new LinkedHashMap();
			holderMap.putAll(sqlMap);
			
			text=new StringBuilder("");
			for (Iterator it =  holderMap.keySet().iterator();it.hasNext();)
			{
				Object key = it.next();
				
				text.append(holderMap.get(key));
				
				sqlMap.remove(key);
			}
			
			holderMap=null;
		}



		rep.setContentType("text/event-stream");
		PrintWriter writer = null;
		try {
			writer = rep.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		writer.write("data:"+text.toString()+"\n\n");
		writer.close();
	}

}
