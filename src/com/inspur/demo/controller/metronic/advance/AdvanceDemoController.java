package com.inspur.demo.controller.metronic.advance;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inspur.lambo.framework.aspect.annotation.LogAround;
import com.inspur.lambo.framework.util.BatchPreparedStatement;
import com.inspur.lambo.framework.util.SqlClient;
import com.inspur.lambo.framework.util.restclient.RestClientForLamboSession;
import com.inspur.lambo.framework.util.restclient.RestClientForLamboToken;


/**
 * lambo工具组件使用示例
 * @author: sun_zhen
 * @date 2016年4月11日 上午11:11:19
 */
@Controller
@RequestMapping("demo/advance")
public class AdvanceDemoController {
	private static Log log = LogFactory.getLog(AdvanceDemoController.class);
	
	
	/**
	 * 通用帮助框
	 * @author: sun_zhen
	 * @date 2016年4月11日 上午11:12:07
	 */
	@RequestMapping("/commonHelp")
	public String commonHelp(Model model,HttpServletRequest req) {

		return "/demo/metronic/advance/commonHelp";
	}
	
	/**
	 * 批量插入示例页面
	 * @author: sun_zhen
	 * @throws Exception 
	 * @date 2016年4月11日 下午2:58:35
	 */
	@RequestMapping("/forBatchInsert")
	@LogAround("进入批量删除demo页面")
	public String forBatchInsert(Model model,HttpServletRequest req) throws Exception {
		
		return "/demo/metronic/advance/forBatchInsert";
	}
	
	/**
	 * 执行批量插入
	 * @author: sun_zhen
	 * @throws Exception 
	 * @date 2016年4月11日 下午2:59:15
	 */
	@RequestMapping("/batchInsert")
	@LogAround("批量插入")
	@ResponseBody
	public String batchInsert(Model model,HttpServletRequest req) throws Exception {
		
		String column0 = req.getParameter("column0");
		String column1 = req.getParameter("column1");
		String column2 = req.getParameter("column2");
		String column3 = req.getParameter("column3");
		String column4 = req.getParameter("column4");
		String column5 = req.getParameter("column5");
		String column6 = req.getParameter("column6");
		String column7 = req.getParameter("column7");
		String column8 = req.getParameter("column8");
		String column9 = req.getParameter("column9");
		
		int dataSize = Integer.parseInt(req.getParameter("dataSize"));
		
		
		String deleteSql = "delete from TEST_FOR_BATCHINSERT";
		
		SqlClient.excuteDelete(deleteSql);
		
		String type = req.getParameter("type");
		//批量插入方式一
		if(type.equals("1")){
			
			StringBuffer insertSql= new StringBuffer();
			insertSql.append("INSERT INTO TEST_FOR_BATCHINSERT(column0,column1,column2,column3,column4,column5,column6,column7,column8,column9) values");
			for(int i=0;i<dataSize;i++){
				insertSql.append("('").append(column0).append(i).append("','").append(column1).append("','").append(column2).append("','").append(column3).append("','").append(column4).append("','").append(column5).append("','").append(column6).append("','").append(column7).append("','").append(column8).append("','").append(column9).append("')");
				if(i!=dataSize -1){
					insertSql.append(",");
				}
			}
			SqlClient.excuteInsert(insertSql.toString());
		//批量插入方式二
		}else if(type.equals("2")){
			
			String insertSql="INSERT INTO TEST_FOR_BATCHINSERT"
					+ "(column0,column1,column2,column3,column4,column5,column6,column7,column8,column9) "
					+ "VALUES(?,?,?,?,?,?,?,?,?,?)";
			try {
				BatchPreparedStatement prest = new BatchPreparedStatement(insertSql);
				for (int i = 0; i < dataSize; i++) {
					prest.setString(1, column0 + i);
					prest.setString(2, column1);
					prest.setString(3, column2);
					prest.setString(4, column3);
					prest.setString(5, column4);
					prest.setString(6, column5);
					prest.setString(7, column6);
					prest.setString(8, column7);
					prest.setString(9, column8);
					prest.setString(10, column9);

					prest.addBatch();
				}
				
				prest.executeBatch(false);
			}catch(Exception e){
				e.printStackTrace();
			}
		}

		return "success";
	}
	
	
	/**
	 * 
	* @Title: restServiceDemo 
	* @Description: rest服务的测试页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/restServiceDemo")
	@LogAround("rest服务测试页面")
	public String restServiceDemo(Model model,HttpServletRequest req){
		
		return "/demo/metronic/advance/restServiceDemo";
	}
	
	
	@RequestMapping("/restDoPost")
	@LogAround("访问rest服务")
	@ResponseBody
	public String restDoPost(Model model,HttpServletRequest req){
		
		String servApp = req.getParameter("servApp");
		String type = req.getParameter("type");
		String restUrl = req.getParameter("restUrl");
		String parm1 = req.getParameter("parm1");
		String value1 = req.getParameter("value1");
		String parm2 = req.getParameter("parm2");
		String value2 = req.getParameter("value2");
		String parm3 = req.getParameter("parm3");
		String value3 = req.getParameter("value3");
		String parm4 = req.getParameter("parm4");
		String value4 = req.getParameter("value4");
		String parm5 = req.getParameter("parm5");
		String value5 = req.getParameter("value5");
		
		Map parmMap = new HashMap();
		if(!parm1.equals("")){
			parmMap.put(parm1, value1);
		}
		if(!parm2.equals("")){
			parmMap.put(parm2, value2);
		}
		if(!parm3.equals("")){
			parmMap.put(parm3, value3);
		}
		if(!parm4.equals("")){
			parmMap.put(parm4, value4);
		}
		if(!parm5.equals("")){
			parmMap.put(parm5, value5);
		}
		
		String result = "";
		
		if(type.equals("session")){
			RestClientForLamboSession rcfls = new RestClientForLamboSession(servApp);
			result = rcfls.doPost(restUrl, parmMap);
			rcfls.close();
		}else{
			RestClientForLamboToken rcflt = new RestClientForLamboToken(servApp);
			result = rcflt.doPost(restUrl, parmMap);
		}
		
		
		return result;
	}
	
	
	
	

}
