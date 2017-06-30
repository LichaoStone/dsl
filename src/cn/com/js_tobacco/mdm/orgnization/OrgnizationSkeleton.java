
/**
 * OrgnizationSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.orgnization;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.inspur.lambo.framework.util.SpringContextUtil;

import cn.com.js_tobacco.mdm.orgnization.sql.IOrgnizationService;
import cn.com.js_tobacco.mdm.position.sql.IPositionService;
import cn.com.js_tobacco.mdm.util.SqlUtil;


    /**
     *  OrgnizationSkeleton java skeleton for the axisService
     */
    public class OrgnizationSkeleton{
        
    	private IOrgnizationService orgnizationService = (IOrgnizationService)SpringContextUtil.getBean("orgnizationService");   
        /**
         * Auto generated method signature
         * 
                                     * @param handle 
             * @return handleResponse 
         */
        
                 public cn.com.js_tobacco.mdm.orgnization.HandleResponse handle
                  (
                  cn.com.js_tobacco.mdm.orgnization.Handle handle
                  )
            {
                     System.out.println("服务请求处理................"); 
                     //处理请求消息        
                     OrgType orgType=handle.getOrg()[0];
                     String action = orgType.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作
                     System.out.println("orgnization action " + action); 
                     
                     
                     Map orgMap=new HashMap();
                     orgMap.put("code", orgType.getCode());
                     orgMap.put("name", orgType.getName());
                     orgMap.put("postalcode", orgType.getPostalcode());
                     orgMap.put("address", orgType.getAddress());
                     orgMap.put("filename", orgType.getFilename());
                     orgMap.put("jgxzlb", orgType.getJgxzlb());
                     orgMap.put("taxorgtype", orgType.getTaxorgtype());
                     orgMap.put("jgjb", orgType.getJgjb());
                     orgMap.put("org_period", orgType.getOrg_period());
                     orgMap.put("org_clsj", orgType.getOrg_clsj());
                     orgMap.put("pzcljg", orgType.getPzcljg());
                     orgMap.put("pzclwjh", orgType.getPzclwjh());
                     orgMap.put("org_cxsj", orgType.getOrg_cxsj());
                     orgMap.put("pzcxjg", orgType.getPzcxjg());
                     orgMap.put("pzcxwjh", orgType.getPzcxwjh());
                     orgMap.put("vocation", orgType.getVocation());
                     orgMap.put("approvedtotal", orgType.getApprovedtotal());
                     orgMap.put("taxorgclass", orgType.getTaxorgclass());
                     orgMap.put("remark", orgType.getRemark());
                     orgMap.put("category", orgType.getCategory());
                     orgMap.put("parent_code", orgType.getParent_code());
                     orgMap.put("orderinfo", orgType.getOrder());
                     orgMap.put("status", orgType.getStatus());
                    
                     String code="000"; 
                     String msg="处理成功";
                     if("add".equals(action)){
                        try {
                            System.out.println("action=="+action);
                            System.out.println("orgType=="+orgType);
                            System.out.println("orgMap=="+orgMap);
                            //SqlUtil.getSqlSession().insert("OrgnizationDomain.insertOrgnization", orgMap);
                            orgnizationService.insertOrgnization(orgMap);
                        } catch (Exception e){
                            System.out.println("Exception=="+e.toString());
                             code = "001";
                             msg="处理失败";
                        }
                    }else if("update".equals(action)){
                        try {
                              //SqlUtil.getSqlSession().insert("OrgnizationDomain.updateOrgnization", orgMap);
                              orgnizationService.updateOrgnization(orgMap);
                        } catch (Exception e){
                            System.out.println("Exception="+e.toString());
                            code = "001";
                            msg="处理失败";
                        }
                    }else if("disable".equals(action)){
                        try {
                        //SqlUtil.getSqlSession().insert("OrgnizationDomain.deleteOrgnization", orgMap);
                        orgnizationService.deleteOrgnization(orgMap);
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
                 
                 //为响应头赋值
                 public RespHeader handleHeader(ReqHeader reqHeader,HandleResponse handleResponse){
                	    RespHeader respHeader = new RespHeader();  //响应头
            	        ResponseHeaderType headerType = new ResponseHeaderType();            	        
            	        String resultCode = "100";
            	        String resultMsg = "业务处理错误";
            	        java.util.Date tranDate = new java.util.Date();
            	        org.apache.axis2.databinding.types.Time tranTimeStamp = new org.apache.axis2.databinding.types.Time(Calendar.getInstance());
            	        String outboundRunningNumber = "";
            	        String conId = "";
            	        String FTP_Dir = "";
            	        String fileList = "";
            	        String expansion1 = "";
            	        String expansion2 = "";           	       
            	        
            	        //为响应头中的resultCode和ResultMsg赋值
            	        if(handleResponse.getResult()!=null&&handleResponse.getResult().length>0){
            	        	int len = handleResponse.getResult().length;
            	        	for(int i=0;i<len;i++){
	            	        	CommonResultType result = handleResponse.getResult()[i];            	        	
	            	        	resultCode = result.getCode();
	            	        	resultMsg = result.getMsg();
	            	        	if(!"000".equals(resultCode)){
	            	        		resultCode = "100";
	            	        		break;
	            	        	}
            	        	}
            	        }
            	        
            	        //获取请求头上的RunningNumber、ConId，Expansion1，Expansion2为响应头相应变量赋值
            	        RequestHeaderType requestHeaderType= reqHeader.getReqHeader();
            	        if(requestHeaderType!=null){
            	        	outboundRunningNumber = requestHeaderType.getSvc_RunningNumber();
            	        	conId = requestHeaderType.getSvc_ConId();
            	        	expansion1 = requestHeaderType.getSvc_Expansion1();
            	        	expansion2 = requestHeaderType.getSvc_Expansion2();
            	        }            	        
            	        
            	        //为响应头赋值
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
    