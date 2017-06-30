/**
 * PositionSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.position;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;

import com.inspur.demo.service.metronic.actual.UserDemoMapper;
import com.inspur.lambo.framework.tag.LamboFunction;
import com.inspur.lambo.framework.util.SpringContextUtil;
import com.inspur.lambo.framework.util.SqlClient;

import cn.com.js_tobacco.mdm.position.sql.IPositionService;
import cn.com.js_tobacco.mdm.position.sql.PositionMapper;
import cn.com.js_tobacco.mdm.util.SqlUtil;

/**
 * PositionSkeleton java skeleton for the axisService
 */

public class PositionSkeleton implements PositionSkeletonInterface {
	
	private IPositionService positionService = (IPositionService)SpringContextUtil.getBean("positionService");
    /**
     * Auto generated method signature
     * 
     * @param handle0
     * @return handleResponse2
     */

    public cn.com.js_tobacco.mdm.position.HandleResponse handle(
            cn.com.js_tobacco.mdm.position.Handle handle) {
        
        System.out.println("服务请求处理................"); 
        //处理请求消息        
        PositionType positionType=handle.getPosition()[0];
        String action = positionType.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作
        System.out.println("Position action " + action); 
        
        
        Map positionMap=new HashMap();
        positionMap.put("positionid", positionType.getPosition_id());
        positionMap.put("empcode", positionType.getEmp_code());
        positionMap.put("appunit", positionType.getAppunit());
        positionMap.put("posname", positionType.getPosname());
        positionMap.put("posdate", positionType.getPosdate());
        positionMap.put("posatt", positionType.getPosatt());
        positionMap.put("businesscurrently", positionType.getBusinesscurrently());
        positionMap.put("posgrade", positionType.getPosgrade());
        positionMap.put("curgradate", positionType.getCurgradate());
        positionMap.put("dismanner", positionType.getDismanner());
        positionMap.put("appsymbol", positionType.getAppsymbol());
        positionMap.put("nextbusinessyear", positionType.getNextbusinessyear());
        positionMap.put("syzt", positionType.getSyzt());
        positionMap.put("sykssj", positionType.getSykssj());
        positionMap.put("removedate", positionType.getRemovedate());
        positionMap.put("removetype", positionType.getRemovetype());
        positionMap.put("dissymbol", positionType.getDissymbol());
        positionMap.put("chatype", positionType.getChatype());
        positionMap.put("posdescribe", positionType.getPosdescribe());
        positionMap.put("posno", positionType.getPosno());
        positionMap.put("iscompetition", positionType.getIscompetition());
        positionMap.put("remark", positionType.getRemark());
        positionMap.put("status", positionType.getStatus());
       
        String code="000"; 
        String msg="处理成功";
        if("add".equals(action)){
           try {
               System.out.println("action=="+action);
               System.out.println("positionMap=="+positionMap);
               //SqlUtil.getSqlSession().insert("PositionMapper.insertPosition", positionMap);
               positionService.insertPosition(positionMap);
           } catch (Exception e){
               System.out.println("Exception=="+e.toString());
                code = "001";
                msg="处理失败";
           }
       }else if("update".equals(action)){
           try {
                 //SqlUtil.getSqlSession().insert("PositionDomain.updatePosition", positionMap);
        	     positionService.updatePosition(positionMap);
           } catch (Exception e){
               System.out.println("Exception="+e.toString());
               code = "001";
               msg="处理失败";
           }
       }else if("disable".equals(action)){
           try {
              //SqlUtil.getSqlSession().insert("PositionDomain.deletePosition", positionMap);
        	   positionService.deletePosition(positionMap);
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

    
    public cn.com.js_tobacco.mdm.position.RespHeader handleHeader(cn.com.js_tobacco.mdm.position.ReqHeader reqHeader,
            cn.com.js_tobacco.mdm.position.HandleResponse handleResponse) {
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
