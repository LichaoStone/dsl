package com.inspur.dsl.controller.retrymq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inspur.dsl.service.retrymq.IRetryMqService;
import com.inspur.lambo.framework.aspect.annotation.LogAround;
import com.inspur.lambo.framework.aspect.annotation.PaginationController;

@Controller
@RequestMapping("/dsl/retrymq")
public class RetryMqController {
	private Logger log = Logger.getLogger(RetryMqController.class);
  
    @Autowired
    private IRetryMqService retryMqService;
	
    /**
     * 页面初始化
     * @return
     */
	@RequestMapping("/pageInit")
	@LogAround("进入查询页面")
	public String pageInit(Model model,HttpServletRequest req){
        if (log.isDebugEnabled()) {
        	log.debug("--RetryMqController--pageInit--start"); 
		}
		
 		return "/dsl/retrymq/retrymq_page_init";
	}
	
	
	@RequestMapping("/getMqErrorList")
	@ResponseBody
	@PaginationController
	@LogAround("分页查询MQ调用第三方应用失败列表")
	public  Map getErrorList(Model model,HttpServletRequest req){
		 if (log.isDebugEnabled()) {
	        	log.debug("--RetryMqController--getErrorList--start"); 
			}
		  //组织查询参数
        Map<String, String> paraMap=new HashMap<String, String>();
        paraMap.put("MSG_ID","0");
        
        List<?> dataList=retryMqService.findAllList(paraMap);
        
        Map<String, Object> resuMap=new HashMap<String,Object>();
        resuMap.put("datas", dataList);
       
        if (log.isDebugEnabled()) {
        	log.debug("--RetryMqController--getErrorList--dataList="+dataList); 
            log.debug("--RetryMqController--getErrorList--resuMap="+resuMap); 
            log.debug("--RetryMqController--getErrorList--end"); 
		}
        
		return resuMap;
	}
	

	@RequestMapping("/retry")
	@LogAround("重新调用第三方服务")
	public String retry(Model model,HttpServletRequest req){
		
		return null;
	}
	
}
