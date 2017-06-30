
/**
 * EmployeeSkeletonInterface.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
    package cn.com.js_tobacco.mdm.employee;
    /**
     *  EmployeeSkeletonInterface java skeleton interface for the axisService
     */
    public interface EmployeeSkeletonInterface {
     
         
        /**
         * Auto generated method signature
         * 
                                    * @param handle
         */

        
                public cn.com.js_tobacco.mdm.employee.HandleResponse handle
                (
                  cn.com.js_tobacco.mdm.employee.Handle handle
                 )
            ;
        
                
                public cn.com.js_tobacco.mdm.employee.RespHeader handleHeader(ReqHeader reqHeader,
                        HandleResponse handleResponse) ;
         }
    