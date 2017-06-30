/**
 * JobSkeletonInterface.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.job;

/**
 * JobSkeletonInterface java skeleton interface for the axisService
 */
public interface JobSkeletonInterface {

    /**
     * Auto generated method signature
     * 
     * @param handle
     */

    public cn.com.js_tobacco.mdm.job.HandleResponse handle(
            cn.com.js_tobacco.mdm.job.Handle handle);
    
    public cn.com.js_tobacco.mdm.job.RespHeader handleHeader(cn.com.js_tobacco.mdm.job.ReqHeader reqHeader,
            cn.com.js_tobacco.mdm.job.HandleResponse handleResponse) ;

}
