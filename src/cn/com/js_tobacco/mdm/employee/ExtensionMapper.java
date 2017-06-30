
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package cn.com.js_tobacco.mdm.employee;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Employee".equals(namespaceURI) &&
                  "EmpType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.employee.EmpType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Employee".equals(namespaceURI) &&
                  "CommonResultType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.employee.CommonResultType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Employee".equals(namespaceURI) &&
                  "RequestHeaderType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.employee.RequestHeaderType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Employee".equals(namespaceURI) &&
                  "ResponseHeaderType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.employee.ResponseHeaderType.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    