
/**
 * PermitSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
    package cn.com.js_tobacco.mdm.permit;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.axiom.om.OMElement;

import cn.com.js_tobacco.mdm.permit.sql.IPermitService;
import cn.com.js_tobacco.mdm.post.sql.IPostService;

import com.inspur.lambo.framework.util.SpringContextUtil;


    /**
     *  PermitSkeleton java skeleton for the axisService
     */
    public class PermitSkeleton{
        
    	private IPermitService permitService = (IPermitService) SpringContextUtil.getBean("permitService");  
        /**
         * Auto generated method signature
         * 
                                     * @param handle 
             * @return handleResponse 
         */
        
                 public cn.com.js_tobacco.mdm.permit.HandleResponse handle
                  (
                  cn.com.js_tobacco.mdm.permit.Handle handle
                  )
            {
                     System.out.println("服务请求处理111。。。。。。。。。。。。"); 
                     //处理请求消息        
                     String action = handle.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作         
                  
                     
                     PermitType permitType=handle.getPermit()[0];
                     System.out.println("获取到的消息值："+permitType.getBz());
                     System.out.println("获取到的消息值q："+permitType.getBzrq());
                     Map custMap=new HashMap();
                     custMap.put("xkzhm", permitType.getXkzhm());
                     custMap.put("khmc", permitType.getKhmc());
                     custMap.put("gbbm", permitType.getGbbm());
                     custMap.put("gsid",permitType.getGsid() );
                     custMap.put("gsmc",permitType.getGsmc() );
                     custMap.put("bmid", permitType.getBmid());
                     custMap.put("rwlx",permitType.getRwlx() );
                     custMap.put("jydz", permitType.getJydz());
                     custMap.put("fr",permitType.getFr() );
                     custMap.put("lxdh", permitType.getLxdh());
                     custMap.put("xb",permitType.getXb() );
                     custMap.put("nl", permitType.getNl());
                     custMap.put("sfz", permitType.getSfz());
                     custMap.put("yyzz", permitType.getYyzz());
                     custMap.put("frcsny",permitType.getFrcsny() );
                     custMap.put("slrq", permitType.getSlrq());
                     custMap.put("yxrq",permitType.getYxrq() );
                     custMap.put("ghdw",permitType.getGhdw() );
                     custMap.put("jyfw",permitType.getJyfw() );
                     custMap.put("jyxz",permitType.getJyxz() );
                     custMap.put("jyyt", permitType.getJyyt());
                     custMap.put("zl", permitType.getZl());
                     custMap.put("bzrq", permitType.getBzrq());
                     custMap.put("gxrq", permitType.getGxrq());
                     custMap.put("nsrq", permitType.getNsrq());
                     custMap.put("bz",permitType.getBz() );
                     custMap.put("zyjy", permitType.getZyjy());
                     custMap.put("ycxt",permitType.getYcxt() );
                     custMap.put("xtnxs",permitType.getXtnxs() );
                     custMap.put("zzrq0", permitType.getZzrq0());
                     custMap.put("zzrq1", permitType.getZzrq1());
                     custMap.put("xzfq", permitType.getXzfq());
                     custMap.put("zt",permitType.getZt() );
                     custMap.put("ext_col1",permitType.getExt_col1() );
                     custMap.put("ext_col2",permitType.getExt_col2()  );
                     custMap.put("ext_col3", permitType.getExt_col3() );
                     custMap.put("ext_col4", permitType.getExt_col4() );
                     custMap.put("ext_col5", permitType.getExt_col5() );
                     custMap.put("ext_col6", permitType.getExt_col6() );
                     custMap.put("ext_col7", permitType.getExt_col7() );
                     custMap.put("ext_col8", permitType.getExt_col8() );
                     custMap.put("ext_col9", permitType.getExt_col9() );
                    
                     custMap.put("ext_col10", permitType.getExt_col10());
                    //组织
                   //  SqlUtil.getSqlSession().insert("com.inspur.hsf.demo.dao.UserMapper", custMap);
                 
                     String code="000"; 
                     String msg="处理成功";
                     if("add".equals(action)){
             	        try {
             	        	System.out.println("action=="+action);
             	        	System.out.println("permitType=="+permitType);
             	        	System.out.println("custMap=="+custMap);
             	            //SqlUtil.getSqlSession().insert("CustDomain.insertCust", custMap);
             	            permitService.insertCust(custMap);
             	        } catch (Exception e){
             	             code = "001";
             	             msg="处理失败";
             	        }
             		}else if("update".equals(action)){
             			
             	        try {
             	        	  //SqlUtil.getSqlSession().insert("CustDomain.updateCust", custMap);
             	              permitService.updateCust(custMap);
             	        } catch (Exception e){
             	            code = "001";
             	            msg="处理失败";
             	        }
             		}else if("disable".equals(action)){
             	        try {
             	        //SqlUtil.getSqlSession().insert("CustDomain.updateCust", custMap);
             	        permitService.updateCust(custMap);
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
            	        
            	        System.out.println(conId);
            	        System.out.println(expansion1);
            	        conId = UUID.randomUUID().toString();
            	        expansion1 = "EM";
            	        
            	        
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
    