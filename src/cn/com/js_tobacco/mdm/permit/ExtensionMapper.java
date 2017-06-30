
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package cn.com.js_tobacco.mdm.permit;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Permit".equals(namespaceURI) &&
                  "CommonResultType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.permit.CommonResultType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Permit".equals(namespaceURI) &&
                  "PermitType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.permit.PermitType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Permit".equals(namespaceURI) &&
                  "RequestHeaderType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.permit.RequestHeaderType.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://js-tobacco.com.cn/mdm/Permit".equals(namespaceURI) &&
                  "ResponseHeaderType".equals(typeName)){
                   
                            return  cn.com.js_tobacco.mdm.permit.ResponseHeaderType.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    