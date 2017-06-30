========================================================
--北京项目  给零售户MDM_CUSTOMER增加  许可证相关字段-----------
=========================================================
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RLIC_ADC VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  APPLE_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  APPLY_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  APPLY_COMPLIET_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LIC_NO VARCHAR(30);
--ALTER TABLE MDM_CUSTOMER ADD COLUMN  INDU_COMM_BUSINESS_LICENCE_NUMBER VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  INDU_COMM_BUSINESS_LICENCE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  MANAGER_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  BUSINESS_ADDR VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  IS_DIFFER_HOME_ADDR VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  SUPPLY_COMPANY VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ACCREDI_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  VALIDATE_END VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  DELIVERY_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ISSUE_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  NOW_EFFECT_STATUS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LIC_ISSUING_ORG VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  MANAGER_SCOPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  GROUND_OWNERSHIP VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LEASE_TIMELIMIT_START VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LEASE_TIMELIMIT_END VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  IS_VALIDATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ISSUE_ORG_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RETAIL_CID_NO VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RETAIL_CID_ADDRESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RETAIL_ADDRESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  CONTRACT_PERSON VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RETAIL_TEL VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  SPECIAL_PERSON_GROUP VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  BUSI_MGR_LIC_VALIDITY VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  BIZ_FORMAT VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  AREA_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ECO_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ECO_TYPE_OTHER VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  RLIC_ADC VARCHAR(30);

ALTER TABLE MDM_CUSTOMER ADD COLUMN  CREATE_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  BIZ_AREA VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  IS_CHAIN VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  IS_MAIN VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  IS_BUSINESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  SPECIAL_GROUP_TYPE_OTHER VARCHAR(30);

ALTER TABLE MDM_CUSTOMER ADD COLUMN  OLD_LIC_NO VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  SUPPLY_COMPANY_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  AGENT_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  AGENT_IDCARD VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  FIRST_ACCREDI_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  REGISTERED_CAPITAL VARCHAR(30);

ALTER TABLE MDM_CUSTOMER ADD COLUMN  ORG_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  ORG_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_MODIFY_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_APPLY_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_OPERATE_COMPLETE_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_OPERATE_TYPE VARCHAR(30);

ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_OPERATE_RESULT VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_OPERATE_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  LAST_OPERATE_LOGNAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  REMARK VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  EXT1 VARCHAR(30);
ALTER TABLE MDM_CUSTOMER ADD COLUMN  EXT2 VARCHAR(30);





========================================================
--北京项目  给零售户MDM_CUSTOMER_LOG增加  许可证相关字段-----------
=========================================================
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RLIC_ADC VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  APPLE_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  APPLY_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  APPLY_COMPLIET_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LIC_NO VARCHAR(30);
--ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  INDU_COMM_BUSINESS_LICENCE_NUMBER VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  INDU_COMM_BUSINESS_LICENCE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  MANAGER_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  BUSINESS_ADDR VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  IS_DIFFER_HOME_ADDR VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  SUPPLY_COMPANY VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ACCREDI_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  VALIDATE_END VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  DELIVERY_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ISSUE_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  NOW_EFFECT_STATUS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LIC_ISSUING_ORG VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  MANAGER_SCOPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  GROUND_OWNERSHIP VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LEASE_TIMELIMIT_START VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LEASE_TIMELIMIT_END VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  IS_VALIDATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ISSUE_ORG_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RETAIL_CID_NO VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RETAIL_CID_ADDRESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RETAIL_ADDRESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  CONTRACT_PERSON VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RETAIL_TEL VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  SPECIAL_PERSON_GROUP VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  BUSI_MGR_LIC_VALIDITY VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  BIZ_FORMAT VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  AREA_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ECO_TYPE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ECO_TYPE_OTHER VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  RLIC_ADC VARCHAR(30);

ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  CREATE_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  BIZ_AREA VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  IS_CHAIN VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  IS_MAIN VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  IS_BUSINESS VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  SPECIAL_GROUP_TYPE_OTHER VARCHAR(30);

ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  OLD_LIC_NO VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  SUPPLY_COMPANY_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  AGENT_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  AGENT_IDCARD VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  FIRST_ACCREDI_DATE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  REGISTERED_CAPITAL VARCHAR(30);

ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ORG_CODE VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  ORG_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_MODIFY_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_APPLY_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_OPERATE_COMPLETE_TIME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_OPERATE_TYPE VARCHAR(30);

ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_OPERATE_RESULT VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_OPERATE_NAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  LAST_OPERATE_LOGNAME VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  REMARK VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  EXT1 VARCHAR(30);
ALTER TABLE MDM_CUSTOMER_LOG ADD COLUMN  EXT2 VARCHAR(30);