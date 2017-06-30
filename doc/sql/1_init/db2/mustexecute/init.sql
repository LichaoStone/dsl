--初始化必须执行的表
-- ----------------------------
-- Table structure for `sys_group`
-- ----------------------------
DROP TABLE  sys_group;
CREATE TABLE sys_group (
  group_id varchar(10) NOT NULL ,
  group_name varchar(50),
  in_use char(1) DEFAULT '1',
  PRIMARY KEY (group_id)
) ;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO sys_group VALUES ('admin', '管理员', '1');
INSERT INTO sys_group VALUES ('user1', '用户组1', '1');
INSERT INTO sys_group VALUES ('user2', '用户组2', '1');
INSERT INTO sys_group VALUES ('user3', '用户组3', '1');
INSERT INTO sys_group VALUES ('user4', '用户组4', '1');
INSERT INTO sys_group VALUES ('user5', '用户组5', '1');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE  sys_user;
CREATE TABLE sys_user (
  userid varchar(30) NOT NULL,
  username varchar(30) NOT NULL ,
  nickname varchar(50)  ,
  password varchar(32) ,
  email varchar(50) ,
  groupin varchar(50)  ,
  mobile varchar(20) ,
  qq varchar(20) ,
  photo varchar(100) ,
  motto varchar(500)  ,
  logincount varchar(20) ,
  lastip varchar(15) ,
  lastlogin varchar(20) ,
  active varchar(10),
  admin char(1) ,
  PRIMARY KEY (userid)
) ;

-- ----------------------------
-- Records of sys_user
-- 密码为：1
-- ----------------------------
INSERT INTO sys_user VALUES ('admin', '管理员', '管理员', '616ed9e93a693b6eca2286238d2b4f5d', '', 'admin', '18611111111', '155098761', '', '', '0', '0.0.0.0', null, '0', '0');
-- ----------------------------
-- Table structure for `sys_third_app`
-- ----------------------------
DROP TABLE sys_third_app;
CREATE TABLE sys_third_app (
  app_id varchar(20) NOT NULL ,
  secret_id varchar(30),
  PRIMARY KEY (app_id)
);

-- ----------------------------
-- Records of sys_third_app
-- ----------------------------
INSERT INTO sys_third_app VALUES ('2204', 'q55@6u');
--===============================================日志基础表====START============================================
﻿------------------------------------------------
-- DSL_MSG  原始数据记录表
------------------------------------------------
CREATE TABLE
    DSL_MSG
    (
        MSG_ID VARCHAR(64) NOT NULL PRIMARY KEY,
        MSG_TYPE VARCHAR(30) NOT NULL ,
        MSG_ACTION VARCHAR(100) NOT NULL ,
        MSG_CREATE_TIME VARCHAR(20) NOT NULL ,
        MSG_SATUS VARCHAR(1) NOT NULL ,
        SERVICE_CLASS VARCHAR(500) NOT NULL,
        SERVICE_PARA CLOB NOT NULL
    )
    IN TD_DATACENTER;
		 
﻿------------------------------------------------
--   DSL_MSG_PARAMETER  原始数据记录表参数表
------------------------------------------------
CREATE TABLE
    DSL_MSG_PARAMETER
    (
        PARA_ID VARCHAR(30) NOT NULL PRIMARY KEY,
        MSG_ID VARCHAR(30) NOT NULL ,
        MSG_PARA_NAME VARCHAR(30) NOT NULL ,
        MSG_PARA_VALUE CLOB NOT NULL
    )
    IN TD_DATACENTER;
﻿------------------------------------------------
--   DSL_PROCESS_LOG  数据处理记录表表结构
------------------------------------------------
CREATE TABLE
    DSL_PROCESS_LOG
    (
        LOG_ID VARCHAR(30) NOT NULL PRIMARY KEY,
        MSG_ID VARCHAR(30) NOT NULL,
        LOG_INFO CLOB NOT NULL ,
        LOG_CREATE_TIME VARCHAR(30) NOT NULL ,
        LOG_RESULT VARCHAR(1) NOT NULL ,
        PRO_NODE VARCHAR(1) NOT NULL 
    )  IN TD_DATACENTER;
--===============================================日志基础表====END============================================
