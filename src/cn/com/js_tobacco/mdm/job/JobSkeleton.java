
/**
 * JobSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.job;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import com.inspur.lambo.framework.util.SpringContextUtil;
import cn.com.js_tobacco.mdm.job.sql.IJobService;
import cn.com.js_tobacco.mdm.util.SqlUtil;

    /**
     *  JobSkeleton java skeleton for the axisService
     */
    public class JobSkeleton implements JobSkeletonInterface{
    	private IJobService jobService = (IJobService)SpringContextUtil.getBean("jobService");
         
        /**
         * Auto generated method signature
         * 
                                     * @param handle0 
             * @return handleResponse2 
         */
        
        public cn.com.js_tobacco.mdm.job.HandleResponse handle (cn.com.js_tobacco.mdm.job.Handle handle) {

            System.out.println("服务请求处理................"); 
            //处理请求消息        
            JobType jobType=handle.getJob()[0];
            String action = jobType.getAction();  //add 新增； update 更新； disable 注销；分别进行相应的数据持久化操作
            System.out.println("job action " + action); 
            
            
            Map jobMap=new HashMap();
            jobMap.put("jobid", jobType.getJob_id());
            jobMap.put("empcode", jobType.getEmp_code());
            jobMap.put("postcode", jobType.getPost_code());
            jobMap.put("joboccupations", jobType.getJoboccupations());
            jobMap.put("wagerule", jobType.getWagerule());
            jobMap.put("ifcurrent", jobType.getIfcurrent());
            jobMap.put("status", jobType.getStatus());
            jobMap.put("ismain", jobType.getIsmain());
           
            String code="000"; 
            String msg="处理成功";
            if("add".equals(action)){
               try {
                   System.out.println("action=="+action);
                   System.out.println("jobMap=="+jobMap);
                   //SqlUtil.getSqlSession().insert("JobDomain.insertJob", jobMap);
                   jobService.insertJob(jobMap);
               } catch (Exception e){
                    System.out.println("Exception=="+e.toString());
                    code = "001";
                    msg="处理失败";
               }
           }else if("update".equals(action)){
               try {
                     //SqlUtil.getSqlSession().insert("JobDomain.updateJob", jobMap);
            	     jobService.updateJob(jobMap);
               } catch (Exception e){
                   System.out.println("Exception="+e.toString());
                   code = "001";
                   msg="处理失败";
               }
           }else if("disable".equals(action)){
               try {
	               //SqlUtil.getSqlSession().insert("JobDomain.deleteJob", jobMap);
	               jobService.deleteJob(jobMap);
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
        
        public cn.com.js_tobacco.mdm.job.RespHeader handleHeader(cn.com.js_tobacco.mdm.job.ReqHeader reqHeader,
                cn.com.js_tobacco.mdm.job.HandleResponse handleResponse) {
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
