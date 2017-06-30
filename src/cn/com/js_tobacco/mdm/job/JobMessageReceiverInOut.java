
/**
 * JobMessageReceiverInOut.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */
        package cn.com.js_tobacco.mdm.job;

import org.apache.axiom.om.OMElement;

        /**
        *  JobMessageReceiverInOut message receiver
        */

        public class JobMessageReceiverInOut extends org.apache.axis2.receivers.AbstractInOutMessageReceiver{


        public void invokeBusinessLogic(org.apache.axis2.context.MessageContext msgContext, org.apache.axis2.context.MessageContext newMsgContext)
        throws org.apache.axis2.AxisFault{

        try {

        // get the implementation class for the Web Service
        Object obj = getTheImplementationObject(msgContext);

        JobSkeletonInterface skel = (JobSkeletonInterface)obj;
        //Out Envelop
        org.apache.axiom.soap.SOAPEnvelope envelope = null;
        //Find the axisOperation that has been set by the Dispatch phase.
        org.apache.axis2.description.AxisOperation op = msgContext.getOperationContext().getAxisOperation();
        if (op == null) {
        throw new org.apache.axis2.AxisFault("Operation is not located, if this is doclit style the SOAP-ACTION should specified via the SOAP Action to use the RawXMLProvider");
        }

        java.lang.String methodName;
        if((op.getName() != null) && ((methodName = org.apache.axis2.util.JavaUtils.xmlNameToJavaIdentifier(op.getName().getLocalPart())) != null)){


        

            if("handle".equals(methodName)){
                
                cn.com.js_tobacco.mdm.job.HandleResponse handleResponse5 = null;
	                        cn.com.js_tobacco.mdm.job.Handle wrappedParam =
                                                             (cn.com.js_tobacco.mdm.job.Handle)fromOM(
                                    msgContext.getEnvelope().getBody().getFirstElement(),
                                    cn.com.js_tobacco.mdm.job.Handle.class,
                                    getEnvelopeNamespaces(msgContext.getEnvelope()));
                                                
                                               handleResponse5 =
                                                   
                                                   
                                                         skel.handle(wrappedParam)
                                                    ;
                                            
                                        envelope = toEnvelope(getSOAPFactory(msgContext), handleResponse5, false, new javax.xml.namespace.QName("http://js-tobacco.com.cn/mdm/Job",
                                                    "handle"));
                                        
                                        //获取请求头
                                        ReqHeader reqHeader = (ReqHeader)fromOM(msgContext.getEnvelope().getHeader().getFirstElement(),ReqHeader.class,
                                                getEnvelopeNamespaces(msgContext.getEnvelope()));
                                        //为响应头赋值
                                        RespHeader respHeader =  skel.handleHeader(reqHeader, handleResponse5);
                                        OMElement respHeaderOMElement =  this.toOM(respHeader, false);
                                        //将响应头封包
                                        envelope.getHeader().addChild(respHeaderOMElement);       
                                    
            } else {
              throw new java.lang.RuntimeException("method not found");
            }
        

        newMsgContext.setEnvelope(envelope);
        }
        }
        catch (java.lang.Exception e) {
        throw org.apache.axis2.AxisFault.makeFault(e);
        }
        }
        
        //
            private  org.apache.axiom.om.OMElement  toOM(cn.com.js_tobacco.mdm.job.Handle param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(cn.com.js_tobacco.mdm.job.Handle.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
            private  org.apache.axiom.om.OMElement  toOM(cn.com.js_tobacco.mdm.job.HandleResponse param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(cn.com.js_tobacco.mdm.job.HandleResponse.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
            private  org.apache.axiom.om.OMElement  toOM(cn.com.js_tobacco.mdm.job.ReqHeader param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(cn.com.js_tobacco.mdm.job.ReqHeader.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
            private  org.apache.axiom.om.OMElement  toOM(cn.com.js_tobacco.mdm.job.RespHeader param, boolean optimizeContent)
            throws org.apache.axis2.AxisFault {

            
                        try{
                             return param.getOMElement(cn.com.js_tobacco.mdm.job.RespHeader.MY_QNAME,
                                          org.apache.axiom.om.OMAbstractFactory.getOMFactory());
                        } catch(org.apache.axis2.databinding.ADBException e){
                            throw org.apache.axis2.AxisFault.makeFault(e);
                        }
                    

            }
        
                    private  org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory, cn.com.js_tobacco.mdm.job.HandleResponse param, boolean optimizeContent, javax.xml.namespace.QName methodQName)
                        throws org.apache.axis2.AxisFault{
                      try{
                          org.apache.axiom.soap.SOAPEnvelope emptyEnvelope = factory.getDefaultEnvelope();
                           
                                    emptyEnvelope.getBody().addChild(param.getOMElement(cn.com.js_tobacco.mdm.job.HandleResponse.MY_QNAME,factory));
                                

                         return emptyEnvelope;
                    } catch(org.apache.axis2.databinding.ADBException e){
                        throw org.apache.axis2.AxisFault.makeFault(e);
                    }
                    }
                    
                         private cn.com.js_tobacco.mdm.job.HandleResponse wraphandle(){
                                cn.com.js_tobacco.mdm.job.HandleResponse wrappedElement = new cn.com.js_tobacco.mdm.job.HandleResponse();
                                return wrappedElement;
                         }
                    


        /**
        *  get the default envelope
        */
        private org.apache.axiom.soap.SOAPEnvelope toEnvelope(org.apache.axiom.soap.SOAPFactory factory){
        return factory.getDefaultEnvelope();
        }


        private  java.lang.Object fromOM(
        org.apache.axiom.om.OMElement param,
        java.lang.Class type,
        java.util.Map extraNamespaces) throws org.apache.axis2.AxisFault{

        try {
        
                if (cn.com.js_tobacco.mdm.job.Handle.class.equals(type)){
                
                           return cn.com.js_tobacco.mdm.job.Handle.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (cn.com.js_tobacco.mdm.job.HandleResponse.class.equals(type)){
                
                           return cn.com.js_tobacco.mdm.job.HandleResponse.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (cn.com.js_tobacco.mdm.job.ReqHeader.class.equals(type)){
                
                           return cn.com.js_tobacco.mdm.job.ReqHeader.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
                if (cn.com.js_tobacco.mdm.job.RespHeader.class.equals(type)){
                
                           return cn.com.js_tobacco.mdm.job.RespHeader.Factory.parse(param.getXMLStreamReaderWithoutCaching());
                    

                }
           
        } catch (java.lang.Exception e) {
        throw org.apache.axis2.AxisFault.makeFault(e);
        }
           return null;
        }



    

        /**
        *  A utility method that copies the namepaces from the SOAPEnvelope
        */
        private java.util.Map getEnvelopeNamespaces(org.apache.axiom.soap.SOAPEnvelope env){
        java.util.Map returnMap = new java.util.HashMap();
        java.util.Iterator namespaceIterator = env.getAllDeclaredNamespaces();
        while (namespaceIterator.hasNext()) {
        org.apache.axiom.om.OMNamespace ns = (org.apache.axiom.om.OMNamespace) namespaceIterator.next();
        returnMap.put(ns.getPrefix(),ns.getNamespaceURI());
        }
        return returnMap;
        }

        private org.apache.axis2.AxisFault createAxisFault(java.lang.Exception e) {
        org.apache.axis2.AxisFault f;
        Throwable cause = e.getCause();
        if (cause != null) {
            f = new org.apache.axis2.AxisFault(e.getMessage(), cause);
        } else {
            f = new org.apache.axis2.AxisFault(e.getMessage());
        }

        return f;
    }

        }//end of class
    