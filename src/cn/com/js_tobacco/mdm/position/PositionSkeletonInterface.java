/**
 * PositionSkeletonInterface.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
package cn.com.js_tobacco.mdm.position;

/**
 * PositionSkeletonInterface java skeleton interface for the axisService
 */
public interface PositionSkeletonInterface {

    /**
     * Auto generated method signature
     * 
     * @param handle
     */

    public cn.com.js_tobacco.mdm.position.HandleResponse handle(
            cn.com.js_tobacco.mdm.position.Handle handle);
    
    public cn.com.js_tobacco.mdm.position.RespHeader handleHeader(cn.com.js_tobacco.mdm.position.ReqHeader reqHeader,
            cn.com.js_tobacco.mdm.position.HandleResponse handleResponse) ;

}
