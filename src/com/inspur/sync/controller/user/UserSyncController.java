package com.inspur.sync.controller.user;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inspur.lambo.framework.aspect.annotation.LogAround;
import com.inspur.lambo.framework.aspect.annotation.PaginationController;
import com.inspur.sync.LdapDemo;
import com.inspur.sync.service.user.IUserSyncService;

/**
* @ClassName: UserSyncController 
* @Description: 用户同步Controller
* @author qukecheng
* @date 2016年8月17日
*
 */
@Controller
@RequestMapping("/sync/user")
public class UserSyncController {
	
	private static Log log = LogFactory.getLog(UserSyncController.class);
	
	@Autowired
	private IUserSyncService userSyncService;
	
	/**
	* @Title: syncquery 
	* @Description: 进入同步信息展现页面
	* @param @param model
	* @param @param req
	* @param @return
	* @return String
	* @throws
	 */
	@RequestMapping("/syncquery")
	@LogAround("进入修改用户页面")
	public String syncquery(Model model,HttpServletRequest req) {
		
		return "sync/user/syncquery";
	}
	
    @RequestMapping("/getUserList")
    @ResponseBody
    @PaginationController
    @LogAround("分页查询用户信息")
    public Map<String, Object> getUserList(Model model,HttpServletRequest req){
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserList--start"); 
        }
        
        //组织查询参数
        String userName = req.getParameter("userName");
        String deptName = req.getParameter("deptName");
        Map<String, String> paraMap=new HashMap<String, String>();
        paraMap.put("USER_NAME", userName);
        paraMap.put("DPT_NAME", deptName);
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserList--paraMap=" + paraMap); 
        }
        
        List<?> dataList=userSyncService.getUserSync(paraMap);
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserList--dataList=" + dataList); 
        }
        
        Map<String, Object> resuMap=new HashMap<String,Object>();
        resuMap.put("datas", dataList);
       
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserList--dataList="+dataList); 
            log.debug("--UserSyncController--getUserList--resuMap="+resuMap); 
            log.debug("--UserSyncController--getUserList--end"); 
        }
        return resuMap;
    }

    @RequestMapping("/getUserSyncInfo1")
    @ResponseBody
    public Map<String, Object> getUserSyncInfo(Model model,HttpServletRequest req){
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserSyncInfo--start"); 
        }
        
        String paramDate = req.getParameter("paramDate");
        log.debug("--UserSyncController--getUserSyncInfo--date=" + paramDate);
        paramDate = paramDate+"00"+"+0800";
        
        Map<String, Object> retMap = new HashMap<String,Object>();
        LdapDemo ldapDemo = new LdapDemo();
        String retStr = "notsync";
        
        // 取系统时间
        List timeList = userSyncService.getUpdTime();
        Map timeMap = (Map) timeList.get(0);
        String updTime = timeMap.get("UPD_TIME")==null?"":(String) timeMap.get("UPD_TIME");
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserSyncInfo--timeMap=" + timeMap);
            log.debug("--UserSyncController--getUserSyncInfo--updTime=" + updTime);
        }
        
        //查询用户，加“*”模糊查询
//        String filter = "(&(|(modifyTimestamp>=" + "20160818012841Z" + 
//                ")(createTimestamp>=" + "20160818034354Z" + "))(smart-authority=Auth_YX))";
        String filter = "(&(|(modifyTimestamp>=" + paramDate + 
                ")(createTimestamp>=" + paramDate + "))(smart-authority=Auth_YX))";
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserSyncInfo--filter=" + filter);
        }
        String basedn = "ou=People,o=kunmingtobacco,o=com";
        List dataList = ldapDemo.getUserInfoList(basedn, filter);
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserSyncInfo--dataList=" + dataList);
        }
        
        try {
            log.debug("--UserSyncController--getUserSyncInfo--dataListSize=" + dataList.size());
            for (int i=0; i<dataList.size(); i++) {
                Map dataMap = (Map) dataList.get(i);
                if (log.isDebugEnabled()) {
                    log.debug("--UserSyncController--getUserSyncInfo--dataMap=" + dataMap);
                }
                List userList = userSyncService.getUserSyncByUserId(dataMap);
                if (log.isDebugEnabled()) {
                    log.debug("--UserSyncController--getUserSyncInfo--userList=" + userList);
                }
                if (userList.size()>0) {
                    userSyncService.updateUserSync(dataMap);
                } else {
                    userSyncService.insertUserSync(dataMap);
                }
                retStr = "success";
            }
        } catch(Exception e) {
            retStr = "fail";
        }
        
        String format = "yyyyMMddHHmmssZ";
        SimpleDateFormat sFormat = new SimpleDateFormat(format);
        Date date = new Date();
        String format2 = sFormat.format(date);
        
        timeMap = new HashMap();
        timeMap.put("UPD_TIME", format2);
        userSyncService.updateUserSyncUpdTime(timeMap);
        
        if (log.isDebugEnabled()) {
            log.debug("--UserSyncController--getUserSyncInfo--end=" + retMap); 
        }
      
        retMap.put("retStr", retStr);
        return retMap;
    }
	
}
