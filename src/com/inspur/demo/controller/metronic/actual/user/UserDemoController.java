package com.inspur.demo.controller.metronic.actual.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inspur.demo.controller.metronic.advance.AdvanceDemoController;
import com.inspur.demo.service.metronic.actual.IUserDemoService;
import com.inspur.lambo.framework.aspect.annotation.LogAround;
import com.inspur.lambo.framework.aspect.annotation.PaginationController;
import com.inspur.lambo.framework.util.EnumsUtil;
import com.inspur.lambo.framework.util.RedirectUtil;
import com.inspur.lambo.plantform.service.support.uc.context.UcContext;

/**
* @ClassName: UserDemoController 
* @Description: 用户管理示例Controller
* @author sun_zhen
* @date 2016年4月18日 上午8:53:17 
*
 */
@Controller
@RequestMapping("/demo/actual/user")
public class UserDemoController {
	
	private static Log log = LogFactory.getLog(AdvanceDemoController.class);
	
	@Autowired
	private IUserDemoService userDemoService;

	/**
	* @Title: newUser 
	* @Description: 进入新增用户页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/new")
	@LogAround("进入新增用户页面")
	public String newUser(Model model,HttpServletRequest req) {
		
		Map groupEnum=EnumsUtil.getEnumsKeyValue(req, "GROUP.GROUPLIST");
		model.addAttribute("groupEnum", groupEnum);

		return "demo/metronic/actual/user/forNewUser";
	}
	
	/**
	* @Title: update 
	* @Description: 进入修改用户页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/update")
	@LogAround("进入修改用户页面")
	public String update(Model model,HttpServletRequest req) {
		
		String userId=req.getParameter("userId");
		
		Map groupEnum=EnumsUtil.getEnumsKeyValue(req, "GROUP.GROUPLIST");
		model.addAttribute("groupEnum", groupEnum);
		
		Map userMap=userDemoService.findUserByUserId(userId);
		
		model.addAttribute("USER",userMap);
		
		return "demo/metronic/actual/user/forUpdateUser";
	}
	
	/**
	* @Title: userList 
	* @Description: 进入查询用户列表页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/list")
	@LogAround("进入查询用户列表页面")
	public String userList(Model model,HttpServletRequest req) {
		

		Map groupEnum=EnumsUtil.getEnumsKeyValue(req, "GROUP.GROUPLIST");
		model.addAttribute("groupEnum", groupEnum);

		return "demo/metronic/actual/user/queryUserList";
	}
	
	
	/**
	 * 获取用户列表数据
	* @Title: getUserListData 
	* @Description: 分页查询用户列表数据
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/getUserListData")
	@ResponseBody
	@PaginationController
	@LogAround("分页查询用户列表数据")
	public Map getUserListData(Model model,HttpServletRequest req){
		
		Map parmMap = new HashMap();
		parmMap.put("USERNAME", req.getParameter("USERNAME"));
		parmMap.put("EMAIL", req.getParameter("EMAIL"));
		parmMap.put("GROUPIN", req.getParameter("GROUPIN"));
		
		List userDataList=userDemoService.findAllUser(parmMap);
		
		Map resultMap = new HashMap();
		resultMap.put("datas", userDataList);
		
		
		return resultMap;
		
	}
	
	/**
	* @Title: saveNewUser 
	* @Description: 保存新用户
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/saveNewUser")
	@LogAround("保存新用户")
	public String saveNewUser(Model model,HttpServletRequest req) {

		String USERID = req.getParameter("USERID");
		String USERNAME = req.getParameter("USERNAME");
		String EMAIL = req.getParameter("EMAIL");
		String MOBILE = req.getParameter("MOBILE");
		String QQ = req.getParameter("QQ");
		String GROUPIN = req.getParameter("GROUPIN");
		String MOTTO = req.getParameter("MOTTO");
		String OPERATE_TYPE = req.getParameter("OPERATE_TYPE");
		String PASSWORD = req.getParameter("PASSWORD");
		
		Map userMap = new HashMap();
		userMap.put("USERID", USERID);
		userMap.put("USERNAME", USERNAME);
		userMap.put("EMAIL", EMAIL);
		userMap.put("MOBILE", MOBILE);
		userMap.put("QQ", QQ);
		userMap.put("GROUP",GROUPIN);
		userMap.put("MOTTO", MOTTO);
		userMap.put("PASSWORD", PASSWORD);
		
		userDemoService.insertUser(userMap);
		
		String returnStr="";
		if(OPERATE_TYPE.equals("save")){
			returnStr = "redirect:/demo/actual/user/list";
		}else if(OPERATE_TYPE.equals("saveAndContinue")){
			returnStr = "redirect:/demo/actual/user/new";
		}

		RedirectUtil.setAttribute(req, "message", "保存成功");
		
		return returnStr;
	}
	
	/**
	* @Title: updateUser 
	* @Description: 修改用户
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/updateUser")
	@LogAround("修改用户")
	public String updateUser(Model model,HttpServletRequest req) {

		String USERID = req.getParameter("USERID");
		String USERNAME = req.getParameter("USERNAME");
		String EMAIL = req.getParameter("EMAIL");
		String MOBILE = req.getParameter("MOBILE");
		String QQ = req.getParameter("QQ");
		String GROUPIN = req.getParameter("GROUPIN");
		String MOTTO = req.getParameter("MOTTO");
		String OPERATE_TYPE = req.getParameter("OPERATE_TYPE");
		
		Map userMap = new HashMap();
		userMap.put("USERID", USERID);
		userMap.put("USERNAME", USERNAME);
		userMap.put("EMAIL", EMAIL);
		userMap.put("MOBILE", MOBILE);
		userMap.put("QQ", QQ);
		userMap.put("GROUP",GROUPIN);
		userMap.put("MOTTO", MOTTO);
		
		userDemoService.updateUser(userMap);
		
		RedirectUtil.setAttribute(req, "message", "保存成功");
		
		return "redirect:/demo/actual/user/update?userId="+USERID;
	}
	
	/**
	* @Title: deleteUser 
	* @Description: 删除用户
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/delete")
	@ResponseBody
	@LogAround("删除用户")
	public String deleteUser(Model model,HttpServletRequest req) {
		
		String userId = req.getParameter("userId");
		userDemoService.deleteUser(userId);

		return "success";
	}
	
	/**
	* @Title: checkUserIdRepeat 
	* @Description: 判断USERID是否重复
	* @param @param model
	* @param @param req
	* @param @return
	* @return boolean
	* @throws
	 */
	@RequestMapping("/checkUserIdRepeat")
	@ResponseBody
	@LogAround("判断USERID是否重复")
	public boolean checkUserIdRepeat(Model model,HttpServletRequest req) {
		
		String userId = req.getParameter("USERID");
		Map userMap = userDemoService.findUserByUserId(userId);
		boolean repeat = false;
		if(userMap!=null){
			repeat=true;
		}

		return !repeat;
	}
	
	
	/**
	* @Title: resetPassword 
	* @Description: 进入修改用户密码页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/resetpassword")
	@LogAround("进入修改用户密码页面")
	public String resetPassword(Model model,HttpServletRequest req) {
		
		
		return "demo/metronic/actual/user/resetPassword";
	}
	
	/**
	* @Title: checkPasswordIsCorrect 
	* @Description: 判断用户密码是否正确
	* @param @param model
	* @param @param req
	* @param @return
	* @return boolean
	* @throws
	 */
	@RequestMapping("/checkPasswordIsCorrect")
	@ResponseBody
	@LogAround("判断用户密码是否正确")
	public boolean checkPasswordIsCorrect(Model model,HttpServletRequest req) {
		
		String password = req.getParameter("password");
		String userId = UcContext.getLoginUserId();
		
		return userDemoService.checkPasswordIsCorrect(userId, password);
	}
	
	/**
	* @Title: updatePassword 
	* @Description: 修改密码
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/updatePassword")
	@LogAround("修改密码")
	public String updatePassword(Model model,HttpServletRequest req) {
		
		String oldPassword = req.getParameter("oldpassword");
		String newPassword = req.getParameter("newpassword");
		String userId = UcContext.getLoginUserId();
		Map map = new HashMap();
		map.put("password", newPassword);
		map.put("userId", userId);
		
		String message ="";
		if(userDemoService.checkPasswordIsCorrect(userId, oldPassword)){
			userDemoService.resetPassword(map);
			message="修改密码成功";
		}else{
			message="修改密码失败，原密码不正确";
		}

		RedirectUtil.setAttribute(req, "message", message);

		return "redirect:/demo/actual/user/resetpassword";
	}
}
