package com.inspur.portal.controller.menu;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.inspur.lambo.plugin.menu.MenuPlugin;

@Controller
@RequestMapping("/menu")
public class Menu {

	private Logger log = Logger.getLogger(Menu.class);
	
	@RequestMapping("/queryMenu")
	@ResponseBody
	public String queryMenu(Model model,HttpServletRequest req) throws JSONException {
		
		JSONArray menuHasPermit = MenuPlugin.getMenuPermited();

		return menuHasPermit.toString();
	};
	
}
