package com.inspur.demo.controller.openapi;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inspur.demo.service.metronic.actual.IUserDemoService;
import com.inspur.lambo.framework.aspect.annotation.OpenApi;



/**
 * 用户接口
 * @author: sun_zhen
 * @date 2015年9月24日 上午11:12:40
 */
@Controller
@RequestMapping("/openApi/uc/user")
public class UserOpenApiController {

	private Logger log = Logger.getLogger(UserOpenApiController.class);
	
	@Autowired
	private IUserDemoService userDemoService;

	
	/**
	 * 根据用户ID查询用户名称服务
	 * @author: sun_zhen
	 * @throws JSONException 
	 * @date 2015年9月24日 上午11:12:53
	 */
	@RequestMapping("/getUserNameById")
	@OpenApi(authType="token")
	@ResponseBody
	public Map getUserNameById(Model model,HttpServletRequest req) throws JSONException {
		
		String userId = req.getParameter("userId");
		Map ret = new HashMap();
		if(userId == null){
			ret.put("code", "900");
			ret.put("message", "userId必须传入");
			
			return ret;
		}
		
		Map userMap = userDemoService.findUserByUserId(userId);
		if(userMap == null){
			ret.put("code", "901");
			ret.put("message", "userId为："+userId+"的用户不存在");
			
			return ret;
		}
		
		String userName = (String)userMap.get("USERNAME");
		
		ret.put("code", "000");
		ret.put("message", userName);

		return ret;
	}
	
}
