/**
 * EmployeeSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.employee;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.inspur.lambo.framework.util.SpringContextUtil;

import cn.com.js_tobacco.mdm.employee.sql.IEmployeeService;
import cn.com.js_tobacco.mdm.post.sql.IPostService;
import cn.com.js_tobacco.mdm.util.SqlUtil;


/**
 * EmployeeSkeleton java skeleton for the axisService
 */
public class EmployeeSkeleton implements  EmployeeSkeletonInterface{
	private IEmployeeService employeeService = (IEmployeeService) SpringContextUtil.getBean("employeeService");
    /**
     * Auto generated method signature
     * 
     * @param handle0
     * @return handleResponse2
     */

    public cn.com.js_tobacco.mdm.employee.HandleResponse handle(
            cn.com.js_tobacco.mdm.employee.Handle handle) {

        System.out.println("服务请求处理................"); 
        //处理请求消息        
        EmpType empType=handle.getEmp()[0];
        String action = empType.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作
        System.out.println("employee action " + action); 
        
        
        Map empMap=new HashMap();
        empMap.put("code", empType.getCode());
        empMap.put("name", empType.getName());
        empMap.put("orgcode", empType.getOrgcode());
        empMap.put("orgname", empType.getOrgname());
        empMap.put("unitcode", empType.getUnitcode());
        empMap.put("unitname", empType.getUnitname());
        empMap.put("gender", empType.getGender());
        empMap.put("birthday", empType.getBirthday());
        empMap.put("nationality", empType.getNationality());
        empMap.put("nativeplace", empType.getNativeplace());
        empMap.put("birthplace", empType.getBirthplace());
        empMap.put("beginworkdate", empType.getBeginworkdate());
        empMap.put("employeestatus", empType.getEmployeestatus());
        empMap.put("entrysort", empType.getEntrysort());
        empMap.put("healthstatus", empType.getHealthstatus());
        empMap.put("idcard", empType.getIdcard());
        empMap.put("joinpolityinfo", empType.getJoinpolityinfo());
        empMap.put("joinpolity", empType.getJoinpolity());
        empMap.put("issignedcontract", empType.getIssignedcontract());
        empMap.put("ldhtqx", empType.getLdhtqx());
        empMap.put("personalidentity", empType.getPersonalidentity());
        empMap.put("sequencedept", empType.getSequencedept());
        empMap.put("speciality", empType.getSpeciality());
        empMap.put("sfgzzenkz", empType.getSfgzzenkz());
        empMap.put("lengthofservice", empType.getLengthofservice());
        empMap.put("serviceofcalling", empType.getServiceofcalling());
        empMap.put("managework", empType.getManagework());
        empMap.put("officetel", empType.getOfficetel());
        empMap.put("hometel", empType.getHometel());
        empMap.put("mobiletel", empType.getMobiletel());
        empMap.put("email", empType.getEmail());
        empMap.put("homaddres", empType.getHomaddres());
        empMap.put("adresspostcode", empType.getAdresspostcode());
        empMap.put("usedname", empType.getUsedname());
        empMap.put("hyzk", empType.getHyzk());
        empMap.put("acclocate", empType.getAcclocate());
        empMap.put("lantype", empType.getLantype());
        empMap.put("lanskill", empType.getLanskill());
        empMap.put("langrade", empType.getLangrade());
        empMap.put("dbdwrq", empType.getDbdwrq());
        empMap.put("nation", empType.getNation());
        empMap.put("sfhbgb", empType.getSfhbgb());
        empMap.put("specificstaff", empType.getSpecificstaff());
        empMap.put("remark", empType.getRemark());
        empMap.put("departuredate", empType.getDeprturedate());
        empMap.put("educated", empType.getEducated());
        empMap.put("highesteducated", empType.getHighesteducated());
        empMap.put("highestdegree", empType.getHighestdegree());
        empMap.put("status", empType.getStatus());
       
        String code="000"; 
        String msg="处理成功";
        if("add".equals(action)){
           try {
               System.out.println("action=="+action);
               System.out.println("empType=="+empType);
               //SqlUtil.getSqlSession().insert("EmployeeDomain.insertEmployee", empMap);
               employeeService.insertEmployee(empMap);
           } catch (Exception e){
               System.out.println("Exception=="+e.toString());
                code = "001";
                msg="处理失败";
           }
       }else if("update".equals(action)){
           try {
                 //SqlUtil.getSqlSession().insert("EmployeeDomain.updateEmployee", empMap);
        	    employeeService.updateEmployee(empMap);
           } catch (Exception e){
               System.out.println("Exception="+e.toString());
               code = "001";
               msg="处理失败";
           }
       }else if("disable".equals(action)){
           try {
           //SqlUtil.getSqlSession().insert("EmployeeDomain.deleteEmployee", empMap);
           employeeService.deleteEmployee(empMap);
           } catch (Exception e){
               code = "001"; 
               msg="处理失败";
           }
       }
        //返回结果示例
        CommonResultType[] creusltArr =  new CommonResultType[1];
        CommonResultType creuslt = new CommonResultType();
        creuslt.setCode(code); //或111 处理失败代码
        creuslt.setMsg(msg);
        creusltArr[0] = creuslt;
        
        HandleResponse  response = new HandleResponse();    
        response.setResult(creusltArr);

        return response;
        
    }

    public RespHeader handleHeader(ReqHeader reqHeader,
            HandleResponse handleResponse) {
        RespHeader respHeader = new RespHeader(); // 响应头
        ResponseHeaderType headerType = new ResponseHeaderType();
        String resultCode = "100";
        String resultMsg = "业务处理错误";
        java.util.Date tranDate = new java.util.Date();
        org.apache.axis2.databinding.types.Time tranTimeStamp = new org.apache.axis2.databinding.types.Time(
                Calendar.getInstance());
        String outboundRunningNumber = "";
        String conId = "";
        String FTP_Dir = "";
        String fileList = "";
        String expansion1 = "";
        String expansion2 = "";

        // 为响应头中的resultCode和ResultMsg赋值
        if (handleResponse.getResult() != null
                && handleResponse.getResult().length > 0) {
            int len = handleResponse.getResult().length;
            for (int i = 0; i < len; i++) {
                CommonResultType result = handleResponse.getResult()[i];
                resultCode = result.getCode();
                resultMsg = result.getMsg();
                if (!"000".equals(resultCode)) {
                    resultCode = "100";
                    break;
                }
            }
        }

        // 获取请求头上的RunningNumber、ConId，Expansion1，Expansion2为响应头相应变量赋值
        RequestHeaderType requestHeaderType = reqHeader.getReqHeader();
        if (requestHeaderType != null) {
            outboundRunningNumber = requestHeaderType.getSvc_RunningNumber();
            conId = requestHeaderType.getSvc_ConId();
            expansion1 = requestHeaderType.getSvc_Expansion1();
            expansion2 = requestHeaderType.getSvc_Expansion2();
        }

        // 为响应头赋值
        headerType.setSvc_ResultCode(resultCode);
        headerType.setSvc_ResultMsg(resultMsg);
        headerType.setSvc_TranDate(tranDate);
        headerType.setSvc_TranTimeStamp(tranTimeStamp);
        headerType.setSvc_OutboundRunningNumber(outboundRunningNumber);
        headerType.setSvc_ConId(conId);
        headerType.setSvc_Expansion1(expansion1);
        headerType.setSvc_Expansion2(expansion2);

        respHeader.setRespHeader(headerType);
        return respHeader;
    }

}
