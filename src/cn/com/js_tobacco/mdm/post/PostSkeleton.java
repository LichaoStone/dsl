
/**
 * PostSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
    package cn.com.js_tobacco.mdm.post;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.inspur.lambo.framework.util.SpringContextUtil;

import cn.com.js_tobacco.mdm.position.sql.IPositionService;
import cn.com.js_tobacco.mdm.post.sql.IPostService;
import cn.com.js_tobacco.mdm.util.SqlUtil;

    /**
     *  PostSkeleton java skeleton for the axisService
     */
public class PostSkeleton implements PostSkeletonInterface {
        
    private IPostService postService = (IPostService) SpringContextUtil.getBean("postService");
        /**
         * Auto generated method signature
         * 
         * @param handle0 
             * @return handleResponse2 
         */
        
    public cn.com.js_tobacco.mdm.post.HandleResponse handle (cn.com.js_tobacco.mdm.post.Handle handle) {

        System.out.println("服务请求处理................"); 
        //处理请求消息        
        PostType postType=handle.getPost()[0];
        String action = postType.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作
        System.out.println("post action " + action); 
        
        Map postMap=new HashMap();
        postMap.put("code", postType.getCode());
        postMap.put("name", postType.getName());
        postMap.put("assignedjobtype", postType.getAssignedjobtype());
        postMap.put("grade", postType.getGrade());
        postMap.put("parentcode", postType.getParent_code());
        postMap.put("responsibilities", postType.getResponsibilities());
        postMap.put("joboccupations", postType.getJoboccupations());
        postMap.put("status", postType.getStatus());
       
        String code="000"; 
        String msg="处理成功";
        if("add".equals(action)){
           try {
               System.out.println("action=="+action);
               System.out.println("postMap=="+postMap);
               //SqlUtil.getSqlSession().insert("PostDomain.insertPost", postMap);
               postService.insertPost(postMap);
           } catch (Exception e){
               System.out.println("Exception=="+e.toString());
                code = "001";
                msg="处理失败";
           }
       }else if("update".equals(action)){
           try {
                 //SqlUtil.getSqlSession().insert("PostDomain.updatePost", postMap);
        	     postService.updatePost(postMap);
           } catch (Exception e){
               System.out.println("Exception="+e.toString());
               code = "001";
               msg="处理失败";
           }
       }else if("disable".equals(action)){
           try {
                //SqlUtil.getSqlSession().insert("PostDomain.deletePost", postMap);
                 postService.deletePost(postMap);
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
     
    
    public cn.com.js_tobacco.mdm.post.RespHeader handleHeader(cn.com.js_tobacco.mdm.post.ReqHeader reqHeader,
            cn.com.js_tobacco.mdm.post.HandleResponse handleResponse) {
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
    