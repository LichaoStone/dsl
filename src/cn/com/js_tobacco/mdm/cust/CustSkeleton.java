
/**
 * CustSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.cust;
import cn.com.js_tobacco.mdm.cust.sql.ICustService;

import com.inspur.lambo.framework.util.SpringContextUtil;
    /**
     *  CustSkeleton java skeleton for the axisService
     */
    public class CustSkeleton implements CustSkeletonInterface{
  	private ICustService custService = (ICustService) SpringContextUtil.getBean("custService");
         
        /**
         * Auto generated method signature
         * 
                                     * @param handle0 
             * @return handleResponse2 
         */
        
                 public cn.com.js_tobacco.mdm.cust.HandleResponse handle
                  (
                  cn.com.js_tobacco.mdm.cust.Handle handle
                  ){
					return null;
        }
                 public cn.com.js_tobacco.mdm.job.RespHeader handleHeader(cn.com.js_tobacco.mdm.job.ReqHeader reqHeader,
                         cn.com.js_tobacco.mdm.job.HandleResponse handleResponse) {
							return null;
                 }
     
    }
    