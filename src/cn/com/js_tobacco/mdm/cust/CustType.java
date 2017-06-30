
/**
 * CustType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

            
                package cn.com.js_tobacco.mdm.cust;
            

            /**
            *  CustType bean class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class CustType
        implements org.apache.axis2.databinding.ADBBean{
        /* This type was generated from the piece of schema that had
                name = CustType
                Namespace URI = http://js-tobacco.com.cn/mdm/Cust
                Namespace Prefix = ns2
                */
            

                        /**
                        * field for Customercode
                        */

                        
                                    protected java.lang.String localCustomercode ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getCustomercode(){
                               return localCustomercode;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Customercode
                               */
                               public void setCustomercode(java.lang.String param){
                            
                                            this.localCustomercode=param;
                                    

                               }
                            

                        /**
                        * field for Customerdesc
                        */

                        
                                    protected java.lang.String localCustomerdesc ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getCustomerdesc(){
                               return localCustomerdesc;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Customerdesc
                               */
                               public void setCustomerdesc(java.lang.String param){
                            
                                            this.localCustomerdesc=param;
                                    

                               }
                            

                        /**
                        * field for Companyid
                        */

                        
                                    protected int localCompanyid ;
                                

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getCompanyid(){
                               return localCompanyid;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Companyid
                               */
                               public void setCompanyid(int param){
                            
                                            this.localCompanyid=param;
                                    

                               }
                            

                        /**
                        * field for Companycode
                        */

                        
                                    protected java.lang.String localCompanycode ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localCompanycodeTracker = false ;

                           public boolean isCompanycodeSpecified(){
                               return localCompanycodeTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getCompanycode(){
                               return localCompanycode;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Companycode
                               */
                               public void setCompanycode(java.lang.String param){
                            localCompanycodeTracker = true;
                                   
                                            this.localCompanycode=param;
                                    

                               }
                            

                        /**
                        * field for Customerlabel
                        */

                        
                                    protected java.lang.String localCustomerlabel ;
                                

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getCustomerlabel(){
                               return localCustomerlabel;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Customerlabel
                               */
                               public void setCustomerlabel(java.lang.String param){
                            
                                            this.localCustomerlabel=param;
                                    

                               }
                            

                        /**
                        * field for Invoicetypeid
                        */

                        
                                    protected int localInvoicetypeid ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localInvoicetypeidTracker = false ;

                           public boolean isInvoicetypeidSpecified(){
                               return localInvoicetypeidTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getInvoicetypeid(){
                               return localInvoicetypeid;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Invoicetypeid
                               */
                               public void setInvoicetypeid(int param){
                            localInvoicetypeidTracker = true;
                                   
                                            this.localInvoicetypeid=param;
                                    

                               }
                            

                        /**
                        * field for Legalperson
                        */

                        
                                    protected java.lang.String localLegalperson ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localLegalpersonTracker = false ;

                           public boolean isLegalpersonSpecified(){
                               return localLegalpersonTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getLegalperson(){
                               return localLegalperson;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Legalperson
                               */
                               public void setLegalperson(java.lang.String param){
                            localLegalpersonTracker = true;
                                   
                                            this.localLegalperson=param;
                                    

                               }
                            

                        /**
                        * field for Addr
                        */

                        
                                    protected java.lang.String localAddr ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localAddrTracker = false ;

                           public boolean isAddrSpecified(){
                               return localAddrTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getAddr(){
                               return localAddr;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Addr
                               */
                               public void setAddr(java.lang.String param){
                            localAddrTracker = true;
                                   
                                            this.localAddr=param;
                                    

                               }
                            

                        /**
                        * field for Tel
                        */

                        
                                    protected java.lang.String localTel ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localTelTracker = false ;

                           public boolean isTelSpecified(){
                               return localTelTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getTel(){
                               return localTel;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Tel
                               */
                               public void setTel(java.lang.String param){
                            localTelTracker = true;
                                   
                                            this.localTel=param;
                                    

                               }
                            

                        /**
                        * field for Bankcode
                        */

                        
                                    protected java.lang.String localBankcode ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localBankcodeTracker = false ;

                           public boolean isBankcodeSpecified(){
                               return localBankcodeTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getBankcode(){
                               return localBankcode;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Bankcode
                               */
                               public void setBankcode(java.lang.String param){
                            localBankcodeTracker = true;
                                   
                                            this.localBankcode=param;
                                    

                               }
                            

                        /**
                        * field for Accountno
                        */

                        
                                    protected java.lang.String localAccountno ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localAccountnoTracker = false ;

                           public boolean isAccountnoSpecified(){
                               return localAccountnoTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getAccountno(){
                               return localAccountno;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Accountno
                               */
                               public void setAccountno(java.lang.String param){
                            localAccountnoTracker = true;
                                   
                                            this.localAccountno=param;
                                    

                               }
                            

                        /**
                        * field for Taxno
                        */

                        
                                    protected java.lang.String localTaxno ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localTaxnoTracker = false ;

                           public boolean isTaxnoSpecified(){
                               return localTaxnoTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getTaxno(){
                               return localTaxno;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Taxno
                               */
                               public void setTaxno(java.lang.String param){
                            localTaxnoTracker = true;
                                   
                                            this.localTaxno=param;
                                    

                               }
                            

                        /**
                        * field for Permitno
                        */

                        
                                    protected java.lang.String localPermitno ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localPermitnoTracker = false ;

                           public boolean isPermitnoSpecified(){
                               return localPermitnoTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getPermitno(){
                               return localPermitno;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Permitno
                               */
                               public void setPermitno(java.lang.String param){
                            localPermitnoTracker = true;
                                   
                                            this.localPermitno=param;
                                    

                               }
                            

                        /**
                        * field for Thesystem
                        */

                        
                                    protected int localThesystem ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localThesystemTracker = false ;

                           public boolean isThesystemSpecified(){
                               return localThesystemTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getThesystem(){
                               return localThesystem;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Thesystem
                               */
                               public void setThesystem(int param){
                            localThesystemTracker = true;
                                   
                                            this.localThesystem=param;
                                    

                               }
                            

                        /**
                        * field for Customergradeid
                        */

                        
                                    protected int localCustomergradeid ;
                                

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getCustomergradeid(){
                               return localCustomergradeid;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Customergradeid
                               */
                               public void setCustomergradeid(int param){
                            
                                            this.localCustomergradeid=param;
                                    

                               }
                            

                        /**
                        * field for Whid
                        */

                        
                                    protected int localWhid ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localWhidTracker = false ;

                           public boolean isWhidSpecified(){
                               return localWhidTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getWhid(){
                               return localWhid;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Whid
                               */
                               public void setWhid(int param){
                            localWhidTracker = true;
                                   
                                            this.localWhid=param;
                                    

                               }
                            

                        /**
                        * field for Visitsalesperiod
                        */

                        
                                    protected int localVisitsalesperiod ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localVisitsalesperiodTracker = false ;

                           public boolean isVisitsalesperiodSpecified(){
                               return localVisitsalesperiodTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getVisitsalesperiod(){
                               return localVisitsalesperiod;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Visitsalesperiod
                               */
                               public void setVisitsalesperiod(int param){
                            localVisitsalesperiodTracker = true;
                                   
                                            this.localVisitsalesperiod=param;
                                    

                               }
                            

                        /**
                        * field for Batchno
                        */

                        
                                    protected java.lang.String localBatchno ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localBatchnoTracker = false ;

                           public boolean isBatchnoSpecified(){
                               return localBatchnoTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getBatchno(){
                               return localBatchno;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Batchno
                               */
                               public void setBatchno(java.lang.String param){
                            localBatchnoTracker = true;
                                   
                                            this.localBatchno=param;
                                    

                               }
                            

                        /**
                        * field for Paymentmode
                        */

                        
                                    protected int localPaymentmode ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localPaymentmodeTracker = false ;

                           public boolean isPaymentmodeSpecified(){
                               return localPaymentmodeTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getPaymentmode(){
                               return localPaymentmode;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Paymentmode
                               */
                               public void setPaymentmode(int param){
                            localPaymentmodeTracker = true;
                                   
                                            this.localPaymentmode=param;
                                    

                               }
                            

                        /**
                        * field for Isvisitbytel
                        */

                        
                                    protected java.lang.String localIsvisitbytel ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localIsvisitbytelTracker = false ;

                           public boolean isIsvisitbytelSpecified(){
                               return localIsvisitbytelTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getIsvisitbytel(){
                               return localIsvisitbytel;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Isvisitbytel
                               */
                               public void setIsvisitbytel(java.lang.String param){
                            localIsvisitbytelTracker = true;
                                   
                                            this.localIsvisitbytel=param;
                                    

                               }
                            

                        /**
                        * field for Statistics
                        */

                        
                                    protected java.lang.String localStatistics ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localStatisticsTracker = false ;

                           public boolean isStatisticsSpecified(){
                               return localStatisticsTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getStatistics(){
                               return localStatistics;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Statistics
                               */
                               public void setStatistics(java.lang.String param){
                            localStatisticsTracker = true;
                                   
                                            this.localStatistics=param;
                                    

                               }
                            

                        /**
                        * field for Custmgr
                        */

                        
                                    protected java.lang.String localCustmgr ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localCustmgrTracker = false ;

                           public boolean isCustmgrSpecified(){
                               return localCustmgrTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getCustmgr(){
                               return localCustmgr;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Custmgr
                               */
                               public void setCustmgr(java.lang.String param){
                            localCustmgrTracker = true;
                                   
                                            this.localCustmgr=param;
                                    

                               }
                            

                        /**
                        * field for Deptcode
                        */

                        
                                    protected java.lang.String localDeptcode ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localDeptcodeTracker = false ;

                           public boolean isDeptcodeSpecified(){
                               return localDeptcodeTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getDeptcode(){
                               return localDeptcode;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Deptcode
                               */
                               public void setDeptcode(java.lang.String param){
                            localDeptcodeTracker = true;
                                   
                                            this.localDeptcode=param;
                                    

                               }
                            

                        /**
                        * field for Twsj
                        */

                        
                                    protected java.util.Date localTwsj ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localTwsjTracker = false ;

                           public boolean isTwsjSpecified(){
                               return localTwsjTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.util.Date
                           */
                           public  java.util.Date getTwsj(){
                               return localTwsj;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Twsj
                               */
                               public void setTwsj(java.util.Date param){
                            localTwsjTracker = true;
                                   
                                            this.localTwsj=param;
                                    

                               }
                            

                        /**
                        * field for Xkzlx
                        */

                        
                                    protected java.lang.String localXkzlx ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localXkzlxTracker = false ;

                           public boolean isXkzlxSpecified(){
                               return localXkzlxTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getXkzlx(){
                               return localXkzlx;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Xkzlx
                               */
                               public void setXkzlx(java.lang.String param){
                            localXkzlxTracker = true;
                                   
                                            this.localXkzlx=param;
                                    

                               }
                            

                        /**
                        * field for Xsgm
                        */

                        
                                    protected java.lang.String localXsgm ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localXsgmTracker = false ;

                           public boolean isXsgmSpecified(){
                               return localXsgmTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getXsgm(){
                               return localXsgm;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Xsgm
                               */
                               public void setXsgm(java.lang.String param){
                            localXsgmTracker = true;
                                   
                                            this.localXsgm=param;
                                    

                               }
                            

                        /**
                        * field for Lxr
                        */

                        
                                    protected java.lang.String localLxr ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localLxrTracker = false ;

                           public boolean isLxrSpecified(){
                               return localLxrTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getLxr(){
                               return localLxr;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Lxr
                               */
                               public void setLxr(java.lang.String param){
                            localLxrTracker = true;
                                   
                                            this.localLxr=param;
                                    

                               }
                            

                        /**
                        * field for Dh
                        */

                        
                                    protected java.lang.String localDh ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localDhTracker = false ;

                           public boolean isDhSpecified(){
                               return localDhTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getDh(){
                               return localDh;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Dh
                               */
                               public void setDh(java.lang.String param){
                            localDhTracker = true;
                                   
                                            this.localDh=param;
                                    

                               }
                            

                        /**
                        * field for Sclx
                        */

                        
                                    protected java.lang.String localSclx ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localSclxTracker = false ;

                           public boolean isSclxSpecified(){
                               return localSclxTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getSclx(){
                               return localSclx;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Sclx
                               */
                               public void setSclx(java.lang.String param){
                            localSclxTracker = true;
                                   
                                            this.localSclx=param;
                                    

                               }
                            

                        /**
                        * field for Sfls
                        */

                        
                                    protected java.lang.String localSfls ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localSflsTracker = false ;

                           public boolean isSflsSpecified(){
                               return localSflsTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getSfls(){
                               return localSfls;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Sfls
                               */
                               public void setSfls(java.lang.String param){
                            localSflsTracker = true;
                                   
                                            this.localSfls=param;
                                    

                               }
                            

                        /**
                        * field for Lsfs
                        */

                        
                                    protected java.lang.String localLsfs ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localLsfsTracker = false ;

                           public boolean isLsfsSpecified(){
                               return localLsfsTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getLsfs(){
                               return localLsfs;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Lsfs
                               */
                               public void setLsfs(java.lang.String param){
                            localLsfsTracker = true;
                                   
                                            this.localLsfs=param;
                                    

                               }
                            

                        /**
                        * field for Khbzbm_gjj
                        */

                        
                                    protected java.lang.String localKhbzbm_gjj ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localKhbzbm_gjjTracker = false ;

                           public boolean isKhbzbm_gjjSpecified(){
                               return localKhbzbm_gjjTracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getKhbzbm_gjj(){
                               return localKhbzbm_gjj;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Khbzbm_gjj
                               */
                               public void setKhbzbm_gjj(java.lang.String param){
                            localKhbzbm_gjjTracker = true;
                                   
                                            this.localKhbzbm_gjj=param;
                                    

                               }
                            

                        /**
                        * field for Status
                        */

                        
                                    protected int localStatus ;
                                

                           /**
                           * Auto generated getter method
                           * @return int
                           */
                           public  int getStatus(){
                               return localStatus;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Status
                               */
                               public void setStatus(int param){
                            
                                            this.localStatus=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col1
                        */

                        
                                    protected java.lang.String localExt_col1 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col1Tracker = false ;

                           public boolean isExt_col1Specified(){
                               return localExt_col1Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col1(){
                               return localExt_col1;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col1
                               */
                               public void setExt_col1(java.lang.String param){
                            localExt_col1Tracker = true;
                                   
                                            this.localExt_col1=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col2
                        */

                        
                                    protected java.lang.String localExt_col2 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col2Tracker = false ;

                           public boolean isExt_col2Specified(){
                               return localExt_col2Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col2(){
                               return localExt_col2;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col2
                               */
                               public void setExt_col2(java.lang.String param){
                            localExt_col2Tracker = true;
                                   
                                            this.localExt_col2=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col3
                        */

                        
                                    protected java.lang.String localExt_col3 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col3Tracker = false ;

                           public boolean isExt_col3Specified(){
                               return localExt_col3Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col3(){
                               return localExt_col3;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col3
                               */
                               public void setExt_col3(java.lang.String param){
                            localExt_col3Tracker = true;
                                   
                                            this.localExt_col3=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col4
                        */

                        
                                    protected java.lang.String localExt_col4 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col4Tracker = false ;

                           public boolean isExt_col4Specified(){
                               return localExt_col4Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col4(){
                               return localExt_col4;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col4
                               */
                               public void setExt_col4(java.lang.String param){
                            localExt_col4Tracker = true;
                                   
                                            this.localExt_col4=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col5
                        */

                        
                                    protected java.lang.String localExt_col5 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col5Tracker = false ;

                           public boolean isExt_col5Specified(){
                               return localExt_col5Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col5(){
                               return localExt_col5;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col5
                               */
                               public void setExt_col5(java.lang.String param){
                            localExt_col5Tracker = true;
                                   
                                            this.localExt_col5=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col6
                        */

                        
                                    protected java.lang.String localExt_col6 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col6Tracker = false ;

                           public boolean isExt_col6Specified(){
                               return localExt_col6Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col6(){
                               return localExt_col6;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col6
                               */
                               public void setExt_col6(java.lang.String param){
                            localExt_col6Tracker = true;
                                   
                                            this.localExt_col6=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col7
                        */

                        
                                    protected java.lang.String localExt_col7 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col7Tracker = false ;

                           public boolean isExt_col7Specified(){
                               return localExt_col7Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col7(){
                               return localExt_col7;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col7
                               */
                               public void setExt_col7(java.lang.String param){
                            localExt_col7Tracker = true;
                                   
                                            this.localExt_col7=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col8
                        */

                        
                                    protected java.lang.String localExt_col8 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col8Tracker = false ;

                           public boolean isExt_col8Specified(){
                               return localExt_col8Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col8(){
                               return localExt_col8;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col8
                               */
                               public void setExt_col8(java.lang.String param){
                            localExt_col8Tracker = true;
                                   
                                            this.localExt_col8=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col9
                        */

                        
                                    protected java.lang.String localExt_col9 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col9Tracker = false ;

                           public boolean isExt_col9Specified(){
                               return localExt_col9Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col9(){
                               return localExt_col9;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col9
                               */
                               public void setExt_col9(java.lang.String param){
                            localExt_col9Tracker = true;
                                   
                                            this.localExt_col9=param;
                                    

                               }
                            

                        /**
                        * field for Ext_col10
                        */

                        
                                    protected java.lang.String localExt_col10 ;
                                
                           /*  This tracker boolean wil be used to detect whether the user called the set method
                          *   for this attribute. It will be used to determine whether to include this field
                           *   in the serialized XML
                           */
                           protected boolean localExt_col10Tracker = false ;

                           public boolean isExt_col10Specified(){
                               return localExt_col10Tracker;
                           }

                           

                           /**
                           * Auto generated getter method
                           * @return java.lang.String
                           */
                           public  java.lang.String getExt_col10(){
                               return localExt_col10;
                           }

                           
                        
                            /**
                               * Auto generated setter method
                               * @param param Ext_col10
                               */
                               public void setExt_col10(java.lang.String param){
                            localExt_col10Tracker = true;
                                   
                                            this.localExt_col10=param;
                                    

                               }
                            

     
     
        /**
        *
        * @param parentQName
        * @param factory
        * @return org.apache.axiom.om.OMElement
        */
       public org.apache.axiom.om.OMElement getOMElement (
               final javax.xml.namespace.QName parentQName,
               final org.apache.axiom.om.OMFactory factory) throws org.apache.axis2.databinding.ADBException{


        
               org.apache.axiom.om.OMDataSource dataSource =
                       new org.apache.axis2.databinding.ADBDataSource(this,parentQName);
               return factory.createOMElement(dataSource,parentQName);
            
        }

         public void serialize(final javax.xml.namespace.QName parentQName,
                                       javax.xml.stream.XMLStreamWriter xmlWriter)
                                throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException{
                           serialize(parentQName,xmlWriter,false);
         }

         public void serialize(final javax.xml.namespace.QName parentQName,
                               javax.xml.stream.XMLStreamWriter xmlWriter,
                               boolean serializeType)
            throws javax.xml.stream.XMLStreamException, org.apache.axis2.databinding.ADBException{
            
                


                java.lang.String prefix = null;
                java.lang.String namespace = null;
                

                    prefix = parentQName.getPrefix();
                    namespace = parentQName.getNamespaceURI();
                    writeStartElement(prefix, namespace, parentQName.getLocalPart(), xmlWriter);
                
                  if (serializeType){
               

                   java.lang.String namespacePrefix = registerPrefix(xmlWriter,"http://js-tobacco.com.cn/mdm/Cust");
                   if ((namespacePrefix != null) && (namespacePrefix.trim().length() > 0)){
                       writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","type",
                           namespacePrefix+":CustType",
                           xmlWriter);
                   } else {
                       writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","type",
                           "CustType",
                           xmlWriter);
                   }

               
                   }
               
                                    namespace = "";
                                    writeStartElement(null, namespace, "customercode", xmlWriter);
                             

                                          if (localCustomercode==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("customercode cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localCustomercode);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             
                                    namespace = "";
                                    writeStartElement(null, namespace, "customerdesc", xmlWriter);
                             

                                          if (localCustomerdesc==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("customerdesc cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localCustomerdesc);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             
                                    namespace = "";
                                    writeStartElement(null, namespace, "companyid", xmlWriter);
                             
                                               if (localCompanyid==java.lang.Integer.MIN_VALUE) {
                                           
                                                         throw new org.apache.axis2.databinding.ADBException("companyid cannot be null!!");
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCompanyid));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                              if (localCompanycodeTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "companycode", xmlWriter);
                             

                                          if (localCompanycode==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localCompanycode);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             }
                                    namespace = "";
                                    writeStartElement(null, namespace, "customerlabel", xmlWriter);
                             

                                          if (localCustomerlabel==null){
                                              // write the nil attribute
                                              
                                                     throw new org.apache.axis2.databinding.ADBException("customerlabel cannot be null!!");
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localCustomerlabel);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                              if (localInvoicetypeidTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "invoicetypeid", xmlWriter);
                             
                                               if (localInvoicetypeid==java.lang.Integer.MIN_VALUE) {
                                           
                                                         writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localInvoicetypeid));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localLegalpersonTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "legalperson", xmlWriter);
                             

                                          if (localLegalperson==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localLegalperson);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localAddrTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "addr", xmlWriter);
                             

                                          if (localAddr==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localAddr);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localTelTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "tel", xmlWriter);
                             

                                          if (localTel==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localTel);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localBankcodeTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "bankcode", xmlWriter);
                             

                                          if (localBankcode==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localBankcode);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localAccountnoTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "accountno", xmlWriter);
                             

                                          if (localAccountno==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localAccountno);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localTaxnoTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "taxno", xmlWriter);
                             

                                          if (localTaxno==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localTaxno);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localPermitnoTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "permitno", xmlWriter);
                             

                                          if (localPermitno==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localPermitno);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localThesystemTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "thesystem", xmlWriter);
                             
                                               if (localThesystem==java.lang.Integer.MIN_VALUE) {
                                           
                                                         writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localThesystem));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                             }
                                    namespace = "";
                                    writeStartElement(null, namespace, "customergradeid", xmlWriter);
                             
                                               if (localCustomergradeid==java.lang.Integer.MIN_VALUE) {
                                           
                                                         throw new org.apache.axis2.databinding.ADBException("customergradeid cannot be null!!");
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustomergradeid));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                              if (localWhidTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "whid", xmlWriter);
                             
                                               if (localWhid==java.lang.Integer.MIN_VALUE) {
                                           
                                                         writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localWhid));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localVisitsalesperiodTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "visitsalesperiod", xmlWriter);
                             
                                               if (localVisitsalesperiod==java.lang.Integer.MIN_VALUE) {
                                           
                                                         writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localVisitsalesperiod));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localBatchnoTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "batchno", xmlWriter);
                             

                                          if (localBatchno==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localBatchno);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localPaymentmodeTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "paymentmode", xmlWriter);
                             
                                               if (localPaymentmode==java.lang.Integer.MIN_VALUE) {
                                           
                                                         writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localPaymentmode));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localIsvisitbytelTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "isvisitbytel", xmlWriter);
                             

                                          if (localIsvisitbytel==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localIsvisitbytel);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localStatisticsTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "statistics", xmlWriter);
                             

                                          if (localStatistics==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localStatistics);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localCustmgrTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "custmgr", xmlWriter);
                             

                                          if (localCustmgr==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localCustmgr);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localDeptcodeTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "deptcode", xmlWriter);
                             

                                          if (localDeptcode==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localDeptcode);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localTwsjTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "twsj", xmlWriter);
                             

                                          if (localTwsj==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localTwsj));
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localXkzlxTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "xkzlx", xmlWriter);
                             

                                          if (localXkzlx==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localXkzlx);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localXsgmTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "xsgm", xmlWriter);
                             

                                          if (localXsgm==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localXsgm);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localLxrTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "lxr", xmlWriter);
                             

                                          if (localLxr==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localLxr);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localDhTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "dh", xmlWriter);
                             

                                          if (localDh==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localDh);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localSclxTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "sclx", xmlWriter);
                             

                                          if (localSclx==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localSclx);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localSflsTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "sfls", xmlWriter);
                             

                                          if (localSfls==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localSfls);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localLsfsTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "lsfs", xmlWriter);
                             

                                          if (localLsfs==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localLsfs);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localKhbzbm_gjjTracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "khbzbm_gjj", xmlWriter);
                             

                                          if (localKhbzbm_gjj==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localKhbzbm_gjj);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             }
                                    namespace = "";
                                    writeStartElement(null, namespace, "status", xmlWriter);
                             
                                               if (localStatus==java.lang.Integer.MIN_VALUE) {
                                           
                                                         throw new org.apache.axis2.databinding.ADBException("status cannot be null!!");
                                                      
                                               } else {
                                                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localStatus));
                                               }
                                    
                                   xmlWriter.writeEndElement();
                              if (localExt_col1Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col1", xmlWriter);
                             

                                          if (localExt_col1==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col1);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col2Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col2", xmlWriter);
                             

                                          if (localExt_col2==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col2);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col3Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col3", xmlWriter);
                             

                                          if (localExt_col3==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col3);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col4Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col4", xmlWriter);
                             

                                          if (localExt_col4==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col4);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col5Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col5", xmlWriter);
                             

                                          if (localExt_col5==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col5);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col6Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col6", xmlWriter);
                             

                                          if (localExt_col6==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col6);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col7Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col7", xmlWriter);
                             

                                          if (localExt_col7==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col7);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col8Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col8", xmlWriter);
                             

                                          if (localExt_col8==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col8);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col9Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col9", xmlWriter);
                             

                                          if (localExt_col9==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col9);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             } if (localExt_col10Tracker){
                                    namespace = "";
                                    writeStartElement(null, namespace, "ext_col10", xmlWriter);
                             

                                          if (localExt_col10==null){
                                              // write the nil attribute
                                              
                                                     writeAttribute("xsi","http://www.w3.org/2001/XMLSchema-instance","nil","1",xmlWriter);
                                                  
                                          }else{

                                        
                                                   xmlWriter.writeCharacters(localExt_col10);
                                            
                                          }
                                    
                                   xmlWriter.writeEndElement();
                             }
                    xmlWriter.writeEndElement();
               

        }

        private static java.lang.String generatePrefix(java.lang.String namespace) {
            if(namespace.equals("http://js-tobacco.com.cn/mdm/Cust")){
                return "ns2";
            }
            return org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
        }

        /**
         * Utility method to write an element start tag.
         */
        private void writeStartElement(java.lang.String prefix, java.lang.String namespace, java.lang.String localPart,
                                       javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
            java.lang.String writerPrefix = xmlWriter.getPrefix(namespace);
            if (writerPrefix != null) {
                xmlWriter.writeStartElement(namespace, localPart);
            } else {
                if (namespace.length() == 0) {
                    prefix = "";
                } else if (prefix == null) {
                    prefix = generatePrefix(namespace);
                }

                xmlWriter.writeStartElement(prefix, localPart, namespace);
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
        }
        
        /**
         * Util method to write an attribute with the ns prefix
         */
        private void writeAttribute(java.lang.String prefix,java.lang.String namespace,java.lang.String attName,
                                    java.lang.String attValue,javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException{
            if (xmlWriter.getPrefix(namespace) == null) {
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
            xmlWriter.writeAttribute(namespace,attName,attValue);
        }

        /**
         * Util method to write an attribute without the ns prefix
         */
        private void writeAttribute(java.lang.String namespace,java.lang.String attName,
                                    java.lang.String attValue,javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException{
            if (namespace.equals("")) {
                xmlWriter.writeAttribute(attName,attValue);
            } else {
                registerPrefix(xmlWriter, namespace);
                xmlWriter.writeAttribute(namespace,attName,attValue);
            }
        }


           /**
             * Util method to write an attribute without the ns prefix
             */
            private void writeQNameAttribute(java.lang.String namespace, java.lang.String attName,
                                             javax.xml.namespace.QName qname, javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {

                java.lang.String attributeNamespace = qname.getNamespaceURI();
                java.lang.String attributePrefix = xmlWriter.getPrefix(attributeNamespace);
                if (attributePrefix == null) {
                    attributePrefix = registerPrefix(xmlWriter, attributeNamespace);
                }
                java.lang.String attributeValue;
                if (attributePrefix.trim().length() > 0) {
                    attributeValue = attributePrefix + ":" + qname.getLocalPart();
                } else {
                    attributeValue = qname.getLocalPart();
                }

                if (namespace.equals("")) {
                    xmlWriter.writeAttribute(attName, attributeValue);
                } else {
                    registerPrefix(xmlWriter, namespace);
                    xmlWriter.writeAttribute(namespace, attName, attributeValue);
                }
            }
        /**
         *  method to handle Qnames
         */

        private void writeQName(javax.xml.namespace.QName qname,
                                javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {
            java.lang.String namespaceURI = qname.getNamespaceURI();
            if (namespaceURI != null) {
                java.lang.String prefix = xmlWriter.getPrefix(namespaceURI);
                if (prefix == null) {
                    prefix = generatePrefix(namespaceURI);
                    xmlWriter.writeNamespace(prefix, namespaceURI);
                    xmlWriter.setPrefix(prefix,namespaceURI);
                }

                if (prefix.trim().length() > 0){
                    xmlWriter.writeCharacters(prefix + ":" + org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
                } else {
                    // i.e this is the default namespace
                    xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
                }

            } else {
                xmlWriter.writeCharacters(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qname));
            }
        }

        private void writeQNames(javax.xml.namespace.QName[] qnames,
                                 javax.xml.stream.XMLStreamWriter xmlWriter) throws javax.xml.stream.XMLStreamException {

            if (qnames != null) {
                // we have to store this data until last moment since it is not possible to write any
                // namespace data after writing the charactor data
                java.lang.StringBuffer stringToWrite = new java.lang.StringBuffer();
                java.lang.String namespaceURI = null;
                java.lang.String prefix = null;

                for (int i = 0; i < qnames.length; i++) {
                    if (i > 0) {
                        stringToWrite.append(" ");
                    }
                    namespaceURI = qnames[i].getNamespaceURI();
                    if (namespaceURI != null) {
                        prefix = xmlWriter.getPrefix(namespaceURI);
                        if ((prefix == null) || (prefix.length() == 0)) {
                            prefix = generatePrefix(namespaceURI);
                            xmlWriter.writeNamespace(prefix, namespaceURI);
                            xmlWriter.setPrefix(prefix,namespaceURI);
                        }

                        if (prefix.trim().length() > 0){
                            stringToWrite.append(prefix).append(":").append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                        } else {
                            stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                        }
                    } else {
                        stringToWrite.append(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(qnames[i]));
                    }
                }
                xmlWriter.writeCharacters(stringToWrite.toString());
            }

        }


        /**
         * Register a namespace prefix
         */
        private java.lang.String registerPrefix(javax.xml.stream.XMLStreamWriter xmlWriter, java.lang.String namespace) throws javax.xml.stream.XMLStreamException {
            java.lang.String prefix = xmlWriter.getPrefix(namespace);
            if (prefix == null) {
                prefix = generatePrefix(namespace);
                javax.xml.namespace.NamespaceContext nsContext = xmlWriter.getNamespaceContext();
                while (true) {
                    java.lang.String uri = nsContext.getNamespaceURI(prefix);
                    if (uri == null || uri.length() == 0) {
                        break;
                    }
                    prefix = org.apache.axis2.databinding.utils.BeanUtil.getUniquePrefix();
                }
                xmlWriter.writeNamespace(prefix, namespace);
                xmlWriter.setPrefix(prefix, namespace);
            }
            return prefix;
        }


  
        /**
        * databinding method to get an XML representation of this object
        *
        */
        public javax.xml.stream.XMLStreamReader getPullParser(javax.xml.namespace.QName qName)
                    throws org.apache.axis2.databinding.ADBException{


        
                 java.util.ArrayList elementList = new java.util.ArrayList();
                 java.util.ArrayList attribList = new java.util.ArrayList();

                
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "customercode"));
                                 
                                        if (localCustomercode != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustomercode));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("customercode cannot be null!!");
                                        }
                                    
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "customerdesc"));
                                 
                                        if (localCustomerdesc != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustomerdesc));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("customerdesc cannot be null!!");
                                        }
                                    
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "companyid"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCompanyid));
                             if (localCompanycodeTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "companycode"));
                                 
                                         elementList.add(localCompanycode==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCompanycode));
                                    }
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "customerlabel"));
                                 
                                        if (localCustomerlabel != null){
                                            elementList.add(org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustomerlabel));
                                        } else {
                                           throw new org.apache.axis2.databinding.ADBException("customerlabel cannot be null!!");
                                        }
                                     if (localInvoicetypeidTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "invoicetypeid"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localInvoicetypeid));
                            } if (localLegalpersonTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "legalperson"));
                                 
                                         elementList.add(localLegalperson==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localLegalperson));
                                    } if (localAddrTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "addr"));
                                 
                                         elementList.add(localAddr==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localAddr));
                                    } if (localTelTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "tel"));
                                 
                                         elementList.add(localTel==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localTel));
                                    } if (localBankcodeTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "bankcode"));
                                 
                                         elementList.add(localBankcode==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localBankcode));
                                    } if (localAccountnoTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "accountno"));
                                 
                                         elementList.add(localAccountno==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localAccountno));
                                    } if (localTaxnoTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "taxno"));
                                 
                                         elementList.add(localTaxno==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localTaxno));
                                    } if (localPermitnoTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "permitno"));
                                 
                                         elementList.add(localPermitno==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localPermitno));
                                    } if (localThesystemTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "thesystem"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localThesystem));
                            }
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "customergradeid"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustomergradeid));
                             if (localWhidTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "whid"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localWhid));
                            } if (localVisitsalesperiodTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "visitsalesperiod"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localVisitsalesperiod));
                            } if (localBatchnoTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "batchno"));
                                 
                                         elementList.add(localBatchno==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localBatchno));
                                    } if (localPaymentmodeTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "paymentmode"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localPaymentmode));
                            } if (localIsvisitbytelTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "isvisitbytel"));
                                 
                                         elementList.add(localIsvisitbytel==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localIsvisitbytel));
                                    } if (localStatisticsTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "statistics"));
                                 
                                         elementList.add(localStatistics==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localStatistics));
                                    } if (localCustmgrTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "custmgr"));
                                 
                                         elementList.add(localCustmgr==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localCustmgr));
                                    } if (localDeptcodeTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "deptcode"));
                                 
                                         elementList.add(localDeptcode==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localDeptcode));
                                    } if (localTwsjTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "twsj"));
                                 
                                         elementList.add(localTwsj==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localTwsj));
                                    } if (localXkzlxTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "xkzlx"));
                                 
                                         elementList.add(localXkzlx==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localXkzlx));
                                    } if (localXsgmTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "xsgm"));
                                 
                                         elementList.add(localXsgm==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localXsgm));
                                    } if (localLxrTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "lxr"));
                                 
                                         elementList.add(localLxr==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localLxr));
                                    } if (localDhTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "dh"));
                                 
                                         elementList.add(localDh==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localDh));
                                    } if (localSclxTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "sclx"));
                                 
                                         elementList.add(localSclx==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localSclx));
                                    } if (localSflsTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "sfls"));
                                 
                                         elementList.add(localSfls==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localSfls));
                                    } if (localLsfsTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "lsfs"));
                                 
                                         elementList.add(localLsfs==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localLsfs));
                                    } if (localKhbzbm_gjjTracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "khbzbm_gjj"));
                                 
                                         elementList.add(localKhbzbm_gjj==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localKhbzbm_gjj));
                                    }
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "status"));
                                 
                                elementList.add(
                                   org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localStatus));
                             if (localExt_col1Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col1"));
                                 
                                         elementList.add(localExt_col1==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col1));
                                    } if (localExt_col2Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col2"));
                                 
                                         elementList.add(localExt_col2==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col2));
                                    } if (localExt_col3Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col3"));
                                 
                                         elementList.add(localExt_col3==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col3));
                                    } if (localExt_col4Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col4"));
                                 
                                         elementList.add(localExt_col4==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col4));
                                    } if (localExt_col5Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col5"));
                                 
                                         elementList.add(localExt_col5==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col5));
                                    } if (localExt_col6Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col6"));
                                 
                                         elementList.add(localExt_col6==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col6));
                                    } if (localExt_col7Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col7"));
                                 
                                         elementList.add(localExt_col7==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col7));
                                    } if (localExt_col8Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col8"));
                                 
                                         elementList.add(localExt_col8==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col8));
                                    } if (localExt_col9Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col9"));
                                 
                                         elementList.add(localExt_col9==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col9));
                                    } if (localExt_col10Tracker){
                                      elementList.add(new javax.xml.namespace.QName("",
                                                                      "ext_col10"));
                                 
                                         elementList.add(localExt_col10==null?null:
                                         org.apache.axis2.databinding.utils.ConverterUtil.convertToString(localExt_col10));
                                    }

                return new org.apache.axis2.databinding.utils.reader.ADBXMLStreamReaderImpl(qName, elementList.toArray(), attribList.toArray());
            
            

        }

  

     /**
      *  Factory class that keeps the parse method
      */
    public static class Factory{

        
        

        /**
        * static method to create the object
        * Precondition:  If this object is an element, the current or next start element starts this object and any intervening reader events are ignorable
        *                If this object is not an element, it is a complex type and the reader is at the event just after the outer start element
        * Postcondition: If this object is an element, the reader is positioned at its end element
        *                If this object is a complex type, the reader is positioned at the end element of its outer element
        */
        public static CustType parse(javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{
            CustType object =
                new CustType();

            int event;
            java.lang.String nillableValue = null;
            java.lang.String prefix ="";
            java.lang.String namespaceuri ="";
            try {
                
                while (!reader.isStartElement() && !reader.isEndElement())
                    reader.next();

                
                if (reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","type")!=null){
                  java.lang.String fullTypeName = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance",
                        "type");
                  if (fullTypeName!=null){
                    java.lang.String nsPrefix = null;
                    if (fullTypeName.indexOf(":") > -1){
                        nsPrefix = fullTypeName.substring(0,fullTypeName.indexOf(":"));
                    }
                    nsPrefix = nsPrefix==null?"":nsPrefix;

                    java.lang.String type = fullTypeName.substring(fullTypeName.indexOf(":")+1);
                    
                            if (!"CustType".equals(type)){
                                //find namespace for the prefix
                                java.lang.String nsUri = reader.getNamespaceContext().getNamespaceURI(nsPrefix);
                                return (CustType)cn.com.js_tobacco.mdm.cust.ExtensionMapper.getTypeObject(
                                     nsUri,type,reader);
                              }
                        

                  }
                

                }

                

                
                // Note all attributes that were handled. Used to differ normal attributes
                // from anyAttributes.
                java.util.Vector handledAttributes = new java.util.Vector();
                

                
                    
                    reader.next();
                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","customercode").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"customercode" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCustomercode(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","customerdesc").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"customerdesc" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCustomerdesc(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","companyid").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"companyid" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCompanyid(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","companycode").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCompanycode(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","customerlabel").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"customerlabel" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCustomerlabel(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","invoicetypeid").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setInvoicetypeid(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                            
                                       } else {
                                           
                                           
                                                   object.setInvoicetypeid(java.lang.Integer.MIN_VALUE);
                                               
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                               object.setInvoicetypeid(java.lang.Integer.MIN_VALUE);
                                           
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","legalperson").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setLegalperson(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","addr").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setAddr(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","tel").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setTel(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","bankcode").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setBankcode(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","accountno").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setAccountno(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","taxno").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setTaxno(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","permitno").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setPermitno(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","thesystem").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setThesystem(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                            
                                       } else {
                                           
                                           
                                                   object.setThesystem(java.lang.Integer.MIN_VALUE);
                                               
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                               object.setThesystem(java.lang.Integer.MIN_VALUE);
                                           
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","customergradeid").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"customergradeid" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCustomergradeid(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","whid").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setWhid(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                            
                                       } else {
                                           
                                           
                                                   object.setWhid(java.lang.Integer.MIN_VALUE);
                                               
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                               object.setWhid(java.lang.Integer.MIN_VALUE);
                                           
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","visitsalesperiod").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setVisitsalesperiod(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                            
                                       } else {
                                           
                                           
                                                   object.setVisitsalesperiod(java.lang.Integer.MIN_VALUE);
                                               
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                               object.setVisitsalesperiod(java.lang.Integer.MIN_VALUE);
                                           
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","batchno").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setBatchno(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","paymentmode").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setPaymentmode(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                            
                                       } else {
                                           
                                           
                                                   object.setPaymentmode(java.lang.Integer.MIN_VALUE);
                                               
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                               object.setPaymentmode(java.lang.Integer.MIN_VALUE);
                                           
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","isvisitbytel").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setIsvisitbytel(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","statistics").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setStatistics(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","custmgr").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setCustmgr(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","deptcode").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setDeptcode(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","twsj").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setTwsj(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToDate(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","xkzlx").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setXkzlx(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","xsgm").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setXsgm(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","lxr").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setLxr(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","dh").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setDh(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","sclx").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setSclx(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","sfls").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setSfls(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","lsfs").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setLsfs(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","khbzbm_gjj").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setKhbzbm_gjj(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","status").equals(reader.getName())){
                                
                                    nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                    if ("true".equals(nillableValue) || "1".equals(nillableValue)){
                                        throw new org.apache.axis2.databinding.ADBException("The element: "+"status" +"  cannot be null");
                                    }
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setStatus(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToInt(content));
                                              
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                else{
                                    // A start element we are not expecting indicates an invalid parameter was passed
                                    throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                                }
                            
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col1").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col1(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col2").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col2(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col3").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col3(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col4").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col4(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col5").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col5(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col6").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col6(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col7").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col7(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col8").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col8(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col9").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col9(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                
                                    
                                    while (!reader.isStartElement() && !reader.isEndElement()) reader.next();
                                
                                    if (reader.isStartElement() && new javax.xml.namespace.QName("","ext_col10").equals(reader.getName())){
                                
                                       nillableValue = reader.getAttributeValue("http://www.w3.org/2001/XMLSchema-instance","nil");
                                       if (!"true".equals(nillableValue) && !"1".equals(nillableValue)){
                                    

                                    java.lang.String content = reader.getElementText();
                                    
                                              object.setExt_col10(
                                                    org.apache.axis2.databinding.utils.ConverterUtil.convertToString(content));
                                            
                                       } else {
                                           
                                           
                                           reader.getElementText(); // throw away text nodes if any.
                                       }
                                      
                                        reader.next();
                                    
                              }  // End of if for expected property start element
                                
                                    else {
                                        
                                    }
                                  
                            while (!reader.isStartElement() && !reader.isEndElement())
                                reader.next();
                            
                                if (reader.isStartElement())
                                // A start element we are not expecting indicates a trailing invalid property
                                throw new org.apache.axis2.databinding.ADBException("Unexpected subelement " + reader.getName());
                            



            } catch (javax.xml.stream.XMLStreamException e) {
                throw new java.lang.Exception(e);
            }

            return object;
        }

        }//end of factory class

        

        }
           
    