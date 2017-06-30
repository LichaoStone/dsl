package com.inspur.portal.controller.login;




import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletContextEvent;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.lambo.framework.mvc.Constants;
import com.inspur.lambo.framework.util.PropertiesUtil;
import com.inspur.lambo.plantform.service.support.uc.javabean.User;
import com.inspur.lambo.plugin.auth.AuthenticationPlugin;


@Controller
public class Login {

	private Logger log = Logger.getLogger(Login.class);

	@RequestMapping("/login")
	public String login(Model model,HttpServletRequest req,HttpServletResponse rep) {

		String sso =PropertiesUtil.getString("sso.switch", "/plantform.properties");
		
		if(sso.equals("1")){
			String ssoIdp =  PropertiesUtil.getString("sso.idp", "/plantform.properties");
			
			if(ssoIdp.equals("st")){
				
				String loginPage = PropertiesUtil.getString("sso.st.loginPage", "/plantform.properties");
				try {
					rep.sendRedirect(loginPage);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}

		return "portal/login/login";
	}
	
	/**
	 * 新商盟st的登录页面
	 * @param model
	 * @param req
	 * @return
	 */
	@RequestMapping("/stlogin")
	public String stlogin(Model model,HttpServletRequest req) {

		return "portal/login/st_login";
	}
	
	@RequestMapping("/logout")
	public String logout(Model model,HttpServletRequest req) {
		
		req.getSession().removeAttribute(Constants.SESSION_KEY_LOGINUSER);

		return "redirect:/login";
	}

	
	@RequestMapping("/stlogin/gohomepage")
	public void stLoginAndGoHomePage(Model model,HttpServletRequest req,HttpServletResponse rep) {
		
		String homePageUrl = PropertiesUtil.getString("homePage", "/plantform.properties");
		
		try {
			rep.sendRedirect(homePageUrl);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	@RequestMapping("/login/authorization")
	public String authorization(Model model,HttpServletRequest req) {
		
		
		
		String userId=req.getParameter("userId");
		String password=req.getParameter("password");
		
		Map authResultMap = AuthenticationPlugin.authentication(userId, password);
		
		boolean successFlag = (Boolean)authResultMap.get("successFlag");
		
		if(successFlag == true){
			User user = (User)authResultMap.get("user");
			
			HttpSession session = req.getSession(false);
			if(session!=null){
				session.invalidate();
			}
			req.getSession(true);
			req.getSession().setAttribute(Constants.SESSION_KEY_LOGINUSER,user);
			
			String homePageUrl = PropertiesUtil.getString("homePage", "/plantform.properties");
			String ctx = req.getContextPath();
			homePageUrl = homePageUrl.replace(ctx, "");
			return "redirect:"+homePageUrl;
			
		}else{
			String message = (String)authResultMap.get("message");
			
			req.setAttribute("message", message);
			req.setAttribute("userId", userId);
		}
		
		return "portal/login/login";

	}

}
