-- MySQL dump 10.13  Distrib 5.6.22, for Win64 (x86_64)
--
-- Host: localhost    Database: wszf
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tf_sys_t_action`
--

DROP TABLE IF EXISTS `tf_sys_t_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_action` (
  `ID` varchar(32) NOT NULL COMMENT '功能主键，UUID',
  `NAME` varchar(32) NOT NULL COMMENT '功能名称',
  `INTENT` varchar(100) DEFAULT NULL COMMENT '功能目标',
  `ISSECURITY` varchar(1) DEFAULT NULL COMMENT '是否安全对象（1 是 其他 否 非安全对象不需要授权即可访问）',
  `DEFAULT_STYLE` varchar(50) DEFAULT NULL COMMENT '默认样式',
  `SHORTCUT_STYLE` varchar(32) DEFAULT NULL COMMENT '快捷方式样式',
  `OTHER_STYLE` varchar(32) DEFAULT NULL COMMENT '其他样式',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `SHORTCUT_SHOW` decimal(38,0) DEFAULT NULL COMMENT '显示快捷方式',
  `MODIFY_DATE` timestamp NULL DEFAULT NULL COMMENT '修改日期',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `PARENT_ID` varchar(32) DEFAULT NULL COMMENT '父级菜单id',
  `ORD` varchar(32) NOT NULL COMMENT '排序号',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_apply`
--

DROP TABLE IF EXISTS `tf_sys_t_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_apply` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `CUS_NAME` varchar(200) NOT NULL COMMENT '客户名称',
  `CUS_PHONE` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `MOBILE_PHONE` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `CUS_EMAIL` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `CUS_COMPANY` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `CUS_BRANCH` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `CUS_DUTY` varchar(100) DEFAULT NULL COMMENT '职务',
  `CUS_DISTRICT` varchar(100) DEFAULT NULL COMMENT '地址',
  `LEAVE_WORD` varchar(500) DEFAULT NULL COMMENT '留言',
  `INFO_FROM` varchar(100) DEFAULT NULL COMMENT '从何获得我们的信息',
  `APPLY_TIME` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `STATUS` varchar(2) DEFAULT NULL COMMENT '状态（1，已读；其他未读）',
  `ADMIN_DESC` varchar(500) DEFAULT NULL COMMENT '管理员备注',
  `READ_TIME` timestamp NULL DEFAULT NULL COMMENT '查看时间',
  `TYPE` varchar(2) DEFAULT NULL COMMENT '类型（0，申请；1购买）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_areacode`
--

DROP TABLE IF EXISTS `tf_sys_t_areacode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_areacode` (
  `area_code` varchar(9) NOT NULL,
  `area_name` varchar(40) DEFAULT NULL,
  `sheng` varchar(2) DEFAULT NULL,
  `shi` varchar(4) DEFAULT NULL,
  `update_time` varchar(100) DEFAULT NULL,
  `update_type` varchar(10) DEFAULT NULL,
  `is_del` varchar(10) DEFAULT NULL,
  `is_kfc` varchar(2) DEFAULT NULL,
  `area_pid` varchar(9) DEFAULT NULL,
  `is_fictitious` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`area_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_attachment`
--

DROP TABLE IF EXISTS `tf_sys_t_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_attachment` (
  `ATT_ID` varchar(32) NOT NULL COMMENT '主键ID',
  `ATT_DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码',
  `ATT_NAME` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `ATT_OPNAME` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `ATT_OPKEY` varchar(32) DEFAULT NULL COMMENT '业务键',
  `ATT_OPNO` varchar(32) DEFAULT NULL COMMENT '业务序号',
  `ATT_FNAME` varchar(100) DEFAULT NULL COMMENT '文件名',
  `ATT_FEXT` varchar(32) DEFAULT NULL COMMENT '扩展名',
  `ATT_DATATYPE` varchar(1) DEFAULT NULL COMMENT '存储位置(1存储CLOB字段，其他：物理路径)',
  `ATT_FPATH` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ATT_FDATA` blob COMMENT '文件存储位置（为1的时生效）',
  `ATT_SIZE` varchar(32) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`ATT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_authority`
--

DROP TABLE IF EXISTS `tf_sys_t_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_authority` (
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `ACTION_ID` varchar(32) NOT NULL COMMENT '功能ID',
  PRIMARY KEY (`ROLE_ID`,`ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_com_user`
--

DROP TABLE IF EXISTS `tf_sys_t_com_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_com_user` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `USER_PWD` varchar(50) DEFAULT NULL COMMENT '登录密码',
  `USER_NAME` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `REAL_NAME` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '公司职务',
  `COM_PHONE` varchar(200) DEFAULT NULL COMMENT '公司电话',
  `USER_PHONE` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `LOGON_TYPE` varchar(2) DEFAULT NULL COMMENT '登录方式(1.手机号,默认 2.邮箱 3.QQ号码 4 微信 5.新浪微博)',
  `USER_TYPE` varchar(2) DEFAULT NULL COMMENT '用户类型（1.企业；2个人）',
  `REG_DATE` timestamp NULL DEFAULT NULL COMMENT '注册日期',
  `DEVICE_ID` varchar(32) DEFAULT NULL COMMENT '设备ID(串号，如没有登录账号，可用设备ID判断是否登录)',
  `DEVICE_TYPE` varchar(100) DEFAULT NULL COMMENT '设备型号',
  `DEVICE_LEVEL` varchar(50) DEFAULT NULL COMMENT '设备版本号',
  `USER_QQ` varchar(50) DEFAULT NULL COMMENT '联系QQ',
  `USER_MAIL` varchar(50) DEFAULT NULL COMMENT '联系邮箱',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_company_alarm`
--

DROP TABLE IF EXISTS `tf_sys_t_company_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_company_alarm` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `CODE` varchar(32) DEFAULT NULL COMMENT '域代码',
  `CONFIG_NAME` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `CONFIG_VALUE` varchar(500) DEFAULT NULL COMMENT '期限时间（天）',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_custome_config`
--

DROP TABLE IF EXISTS `tf_sys_t_custome_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_custome_config` (
  `ID` varchar(32) NOT NULL COMMENT '客户ID',
  `CODE` varchar(32) DEFAULT NULL COMMENT '域代码',
  `CONFIG_NAME` varchar(50) DEFAULT NULL COMMENT '配置名称',
  `CONFIG_VALUE` varchar(500) DEFAULT NULL COMMENT '配置值',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_customer`
--

DROP TABLE IF EXISTS `tf_sys_t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_customer` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `CODE` varchar(32) NOT NULL COMMENT '域代码,为客户所在地的行政区划代码',
  `NAME` varchar(120) DEFAULT NULL COMMENT '客户名称',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `TEL` varchar(32) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '信箱',
  `LINKMAN` varchar(10) DEFAULT NULL COMMENT '联系人',
  `SELLER` varchar(32) DEFAULT NULL COMMENT '销售人',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '状态，1可用，其他不可用',
  `EXPIRES` timestamp NULL DEFAULT NULL COMMENT '许可到期事件',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注（请写清楚客户的用途，例如:测试或演示区域等。）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_customer_bugs`
--

DROP TABLE IF EXISTS `tf_sys_t_customer_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_customer_bugs` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CUSTOMER_ID` varchar(32) NOT NULL COMMENT '客户id',
  `CUSTOMER_LINKMAN` varchar(32) DEFAULT NULL COMMENT '客户联系人',
  `LINKMAN_DUTY` varchar(32) DEFAULT NULL COMMENT '联系人职务',
  `PHONE_NUMBER` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `SALES_MEN` varchar(500) DEFAULT NULL COMMENT '所属销售',
  `BUG_LEVEL` varchar(32) DEFAULT NULL COMMENT '问题级别',
  `BUGS_DATE` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `IS_SAMEDAY` varchar(1) DEFAULT NULL COMMENT '是否当天解决',
  `RESOLVER` varchar(500) DEFAULT NULL COMMENT '解决人',
  `RESOLVE_DATE` timestamp NULL DEFAULT NULL COMMENT '计划解决时间',
  `RESOLVE_REMARK` varchar(200) DEFAULT NULL COMMENT '确认解决',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `RECEIVERS` varchar(500) DEFAULT NULL COMMENT '关注人',
  `STATUS` varchar(1) DEFAULT NULL COMMENT 'bug状态（0未修改，1已修改，2修改已确认）',
  `DESCRIPTION` text COMMENT '问题描述',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '记录人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_customeraction`
--

DROP TABLE IF EXISTS `tf_sys_t_customeraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_customeraction` (
  `CUST_DOMAIN` varchar(32) NOT NULL COMMENT '客户域代码',
  `ACTION_ID` varchar(32) NOT NULL COMMENT '功能ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_datasync`
--

DROP TABLE IF EXISTS `tf_sys_t_datasync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_datasync` (
  `ID` varchar(32) NOT NULL,
  `TBNAME` varchar(32) DEFAULT NULL,
  `ROWFLAG` varchar(100) DEFAULT NULL,
  `OPFLAG` varchar(1) DEFAULT NULL,
  `OPCODE` varchar(32) DEFAULT NULL,
  `DOMAIN` varchar(32) DEFAULT NULL,
  `UPDATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_datasyncinfo`
--

DROP TABLE IF EXISTS `tf_sys_t_datasyncinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_datasyncinfo` (
  `ID` varchar(32) NOT NULL,
  `SERVER_VER` decimal(18,0) DEFAULT NULL COMMENT '服务器数据库版本',
  `SQLJSON` varchar(2000) DEFAULT NULL COMMENT 'sql脚本',
  `GDATE` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_department`
--

DROP TABLE IF EXISTS `tf_sys_t_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_department` (
  `DEPT_ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `DEPT_PARENT` varchar(32) DEFAULT NULL COMMENT '父部门',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '组织结构名称',
  `DEPT_DOMAIN` varchar(32) NOT NULL COMMENT '域代码',
  `DEPT_ORDER` varchar(32) DEFAULT NULL COMMENT '排序号',
  `DEPT_ADDR` varchar(100) DEFAULT NULL COMMENT '地址',
  `DEPT_CONTACT` varchar(10) DEFAULT NULL COMMENT '联系人（真实姓名）',
  `DEPT_TEL` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `DEPT_EMAIL` varchar(32) DEFAULT NULL COMMENT '信箱',
  `DEPT_POSTCODE` varchar(50) DEFAULT NULL COMMENT '邮编',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `MODIFY_DATE` timestamp NULL DEFAULT NULL COMMENT '修改日期',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_device`
--

DROP TABLE IF EXISTS `tf_sys_t_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_device` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码,为客户所在地的行政区划代码',
  `DEVICEID` varchar(100) NOT NULL COMMENT '设备ID',
  `REGDATE` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `ACTDATE` timestamp NULL DEFAULT NULL COMMENT '激活时间',
  `ACTUSERID` varchar(32) DEFAULT NULL COMMENT '激活时间',
  `ACTUSERNAME` varchar(10) DEFAULT NULL COMMENT '激活人',
  `DEVICESTATUS` varchar(1) DEFAULT NULL COMMENT '设备状态(1 已激活 其他 未激活)',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_device_list`
--

DROP TABLE IF EXISTS `tf_sys_t_device_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_device_list` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `USER_ID` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `BD_APP_ID` varchar(32) DEFAULT NULL COMMENT '应用ID',
  `BD_USER_ID` varchar(32) DEFAULT NULL COMMENT '账号ID',
  `BD_CHANNEL_ID` varchar(32) DEFAULT NULL COMMENT '通道ID',
  `BD_TAG_NAME` varchar(32) DEFAULT NULL COMMENT '标签名称（域代码）',
  `DEVICE_NAME` varchar(32) DEFAULT NULL COMMENT '设备型号',
  `DEVICE_RELEASE` varchar(32) DEFAULT NULL COMMENT '设备版本号',
  `DEVICE_ID` varchar(32) DEFAULT NULL COMMENT '设备唯一编码（串号，没串号的写mac地址）',
  `UP_TIME` timestamp NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_device_message`
--

DROP TABLE IF EXISTS `tf_sys_t_device_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_device_message` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `USER_ID` varchar(32) NOT NULL COMMENT '监督员ID',
  `SEND_MESSAGE` varchar(500) DEFAULT NULL COMMENT '发送信息',
  `SEND_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发送时间',
  `STATUS` varchar(1) NOT NULL COMMENT '状态（0待发送，1已发送）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_dictionary`
--

DROP TABLE IF EXISTS `tf_sys_t_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_dictionary` (
  `DIC_ID` varchar(32) NOT NULL COMMENT '字典ID',
  `DIC_NAME` varchar(100) NOT NULL COMMENT '字典名称',
  `DIC_PAREN` varchar(32) DEFAULT NULL COMMENT '父字典',
  `DIC_ORDER` varchar(32) DEFAULT NULL COMMENT '排序号',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `OPVALUE` varchar(100) DEFAULT NULL COMMENT '业务值',
  `PARENT_VALUE` varchar(100) DEFAULT NULL COMMENT '父业务值',
  PRIMARY KEY (`DIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_file_dict`
--

DROP TABLE IF EXISTS `tf_sys_t_file_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_file_dict` (
  `ID` varchar(50) NOT NULL,
  `LICENCE_TYPE` varchar(50) DEFAULT NULL,
  `FLOW_TYPE` varchar(10) DEFAULT NULL,
  `FILE_NAME` varchar(500) DEFAULT NULL,
  `FILE_FORMAT` varchar(500) DEFAULT NULL,
  `FILE_ORDER` decimal(10,0) DEFAULT NULL,
  `DESCRIBE` varchar(500) DEFAULT NULL,
  `IS_NEED` decimal(1,0) DEFAULT NULL,
  `COM_TYPE` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_flash`
--

DROP TABLE IF EXISTS `tf_sys_t_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_flash` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `CONTENT` text COMMENT '内容',
  `UTYPE` varchar(255) DEFAULT NULL COMMENT '用户类型',
  `ISSUETIME` date DEFAULT NULL COMMENT '发布日期',
  `RELEASEUID` varchar(32) DEFAULT NULL COMMENT '发布人id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_huodong`
--

DROP TABLE IF EXISTS `tf_sys_t_huodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_huodong` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `HDNAME` varchar(255) DEFAULT NULL COMMENT '活动名称',
  `HDCONTENT` text COMMENT '活动内容',
  `FBDATE` varchar(20) DEFAULT NULL COMMENT '发布日期',
  `KSDATE` varchar(20) DEFAULT NULL COMMENT '活动开始日期',
  `JZDATE` varchar(20) DEFAULT NULL COMMENT '活动截止日期',
  `HDTYPE` varchar(32) DEFAULT NULL COMMENT '活动类型，1:十一促销2:元旦促销3:春节大放价',
  `JIFEN` varchar(10) DEFAULT NULL COMMENT '本次活动积分设置',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_huodongbm`
--

DROP TABLE IF EXISTS `tf_sys_t_huodongbm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_huodongbm` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `HDID` varchar(32) DEFAULT NULL COMMENT '活动ID',
  `HYNAME` varchar(255) DEFAULT NULL COMMENT '报名会员姓名',
  `HYTEL` varchar(20) DEFAULT NULL COMMENT '报名会员电话',
  `HYLOGINNAME` varchar(255) DEFAULT NULL COMMENT '报名会员登录名',
  `QUERENCJ` varchar(3) DEFAULT NULL COMMENT '确认参加0:未参加1：参加',
  `BZ` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_mobileversion`
--

DROP TABLE IF EXISTS `tf_sys_t_mobileversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_mobileversion` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `SYSNO` varchar(32) NOT NULL COMMENT '系统编号（字典）',
  `VERSIONCODE` varchar(32) NOT NULL COMMENT '版本号',
  `VERSIONNAME` varchar(100) NOT NULL COMMENT '版本名称',
  `FILESIZE` decimal(18,0) NOT NULL COMMENT '文件大小（字节）',
  `UPTIME` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `UPUSER` varchar(32) DEFAULT NULL COMMENT '上传人',
  `FILEPATH` varchar(100) NOT NULL COMMENT '文件地址',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `ISMASTER` varchar(2) DEFAULT NULL COMMENT '是否为必要更新（1是，0否）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_order`
--

DROP TABLE IF EXISTS `tf_sys_t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_order` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `payment` varchar(50) DEFAULT NULL COMMENT '实付金额',
  `payment_type` varchar(2) DEFAULT NULL COMMENT '支付类型：1：在线支付2：货到付款',
  `post_fee` varchar(10) DEFAULT NULL COMMENT '邮费',
  `status` varchar(2) DEFAULT NULL COMMENT '状态：1未付款2已付款3未发货4已发货5交易成功6交易关闭7已提交付款，我的订单页不显示',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '订单更新时间',
  `payment_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '交易关闭时间',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `buyer_message` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(255) DEFAULT NULL COMMENT '买家昵称',
  `buyer_rate` varchar(2) DEFAULT NULL COMMENT '买家是否已经评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_order_item`
--

DROP TABLE IF EXISTS `tf_sys_t_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_order_item` (
  `id` varchar(32) DEFAULT NULL COMMENT '主键',
  `pro_id` varchar(32) DEFAULT NULL COMMENT '商品ID',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单编号ID',
  `num` varchar(100) DEFAULT NULL COMMENT '购买数量',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `price` varchar(10) DEFAULT NULL COMMENT '商品单价',
  `total_fee` varchar(255) DEFAULT NULL COMMENT '总价',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '商品图片地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_order_shipping`
--

DROP TABLE IF EXISTS `tf_sys_t_order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_order_shipping` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `status` varchar(1) DEFAULT NULL COMMENT '是否可用：0：不可用1：可用',
  `receiver_name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(50) DEFAULT NULL COMMENT '收货人固定电话',
  `receiver_mobile` varchar(11) DEFAULT NULL COMMENT '收货人移动电话',
  `receiver_state` varchar(50) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(100) DEFAULT NULL COMMENT '城市',
  `receiver_distict` varchar(100) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(255) DEFAULT NULL COMMENT '详细地址,xx路xx号',
  `receiver_zip` varchar(10) DEFAULT NULL COMMENT '邮政编码，如050000',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `receiver_street` varchar(255) DEFAULT NULL COMMENT '街道',
  `area_code` varchar(255) DEFAULT NULL COMMENT '地区编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单配送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_order_shipping_order`
--

DROP TABLE IF EXISTS `tf_sys_t_order_shipping_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_order_shipping_order` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单id对应tf_sys_t_order表id',
  `ship_id` varchar(32) DEFAULT NULL COMMENT '收货信息id对应tf_sys_t_order_shipping主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单配送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_orderinfo`
--

DROP TABLE IF EXISTS `tf_sys_t_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_orderinfo` (
  `id` varchar(200) NOT NULL,
  `userid` varchar(50) DEFAULT NULL COMMENT '用户id',
  `city` varchar(255) DEFAULT NULL COMMENT '所在地区',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `telephone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `mobile` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `username` varchar(255) DEFAULT NULL COMMENT '收获人姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_product`
--

DROP TABLE IF EXISTS `tf_sys_t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_product` (
  `ID` varchar(32) NOT NULL DEFAULT '' COMMENT '主键',
  `PRONAME` varchar(1000) DEFAULT NULL COMMENT '产品名称',
  `PROTYPE` varchar(1000) DEFAULT NULL COMMENT '产品分类（大类）',
  `PROCODE` varchar(255) DEFAULT NULL COMMENT '产品型号',
  `PROBRAND` varchar(255) DEFAULT NULL COMMENT '产品品牌',
  `PROWEIGHT` varchar(255) DEFAULT NULL COMMENT '产品重量',
  `PROSPEC` varchar(255) DEFAULT NULL COMMENT '产品规格（大小）',
  `PROMATERIAL` varchar(255) DEFAULT NULL COMMENT '产品材质',
  `PROCOLOR` varchar(255) DEFAULT NULL COMMENT '产品颜色',
  `PROLEVEL` varchar(255) DEFAULT NULL COMMENT '产品级别',
  `PROPRICE` varchar(255) DEFAULT NULL COMMENT '产品价格',
  `PROBELONG` varchar(255) DEFAULT NULL COMMENT '产品所属供货商',
  `PRONUM` decimal(10,0) DEFAULT NULL COMMENT '产品数量',
  `PROSTATE` varchar(10) DEFAULT NULL COMMENT '产品审核状态',
  `MINORCLASS` varchar(10) DEFAULT NULL COMMENT '产品小类',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `COST` varchar(10) DEFAULT NULL COMMENT '费用',
  `DETAILDESCRIP` varchar(1000) DEFAULT NULL COMMENT '详细描述（服务描述）',
  `VALIDEDATE` timestamp NULL DEFAULT NULL COMMENT '有效期',
  `LXADDR` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `LXPERSON` varchar(20) DEFAULT NULL COMMENT '联系人',
  `LXPHONE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `MPRICE` varchar(10) DEFAULT NULL COMMENT '市场价格',
  `TIERIPRICE` varchar(10) DEFAULT NULL COMMENT '一级供应商价格',
  `TWOLEVELPRICE` varchar(10) DEFAULT NULL COMMENT '二级供应商价格',
  `HEADPRICE` varchar(10) DEFAULT NULL COMMENT '总公司价格',
  `PRODETAIL` text COMMENT '产品详情',
  `PROSTARTDATE` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '有效期开始日期',
  `PROPIC` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_product_pic`
--

DROP TABLE IF EXISTS `tf_sys_t_product_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_product_pic` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `PROID` varchar(32) DEFAULT NULL COMMENT '商品主键',
  `PICPATH` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `PICNAME` varchar(1000) DEFAULT NULL COMMENT '图片名',
  `INDEXPIC` varchar(1) DEFAULT NULL COMMENT '是否首页展示图片 1：是,0:不是',
  `UPLOADTIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上传时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_region`
--

DROP TABLE IF EXISTS `tf_sys_t_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_region` (
  `CODE` varchar(32) NOT NULL COMMENT '区划代码',
  `NAME` varchar(100) NOT NULL COMMENT '区划名称',
  `DISPLAY_NAME` varchar(100) DEFAULT NULL COMMENT '显示名称',
  `P_CODE` varchar(32) DEFAULT NULL COMMENT '父区划',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_role`
--

DROP TABLE IF EXISTS `tf_sys_t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_role` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `NAME` varchar(32) NOT NULL COMMENT '角色名称',
  `CODE` varchar(32) NOT NULL COMMENT '唯一编码，可用户排序和标识权重',
  `PAGE` varchar(32) DEFAULT NULL COMMENT '登录后的默认功能，如果用户有多角色，可根据角色权重判断，权重值最小的默认功能生效',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `DOMAIN` varchar(32) NOT NULL COMMENT '区域代码',
  `MODIFY_DATE` timestamp NULL DEFAULT NULL COMMENT '修改日期',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_shoppingcart`
--

DROP TABLE IF EXISTS `tf_sys_t_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_shoppingcart` (
  `ID` varchar(32) NOT NULL COMMENT '主键',
  `USERID` varchar(32) DEFAULT NULL COMMENT '登录用户ID',
  `PROID` varchar(32) DEFAULT NULL COMMENT '购买商品ID',
  `ADDTIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '加入购物车时间',
  `PROCOUNT` varchar(255) DEFAULT NULL COMMENT '商品数量',
  `PROPRICE` varchar(100) DEFAULT NULL COMMENT '商品单价',
  `SUMPRICE` varchar(100) DEFAULT NULL COMMENT '商品总价',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_user`
--

DROP TABLE IF EXISTS `tf_sys_t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_user` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `USER_ID` varchar(32) NOT NULL COMMENT '登录用户名',
  `PASSWORD` varchar(32) NOT NULL COMMENT '登录密码',
  `USER_NAME` varchar(100) NOT NULL COMMENT '真实姓名',
  `USER_DOMAIN` varchar(32) NOT NULL COMMENT '域代码',
  `USER_SEX` varchar(1) DEFAULT NULL COMMENT '性别(1男 2女 其他未知)',
  `USER_BTDAY` timestamp NULL DEFAULT NULL COMMENT '生日',
  `USER_HT` varchar(30) DEFAULT NULL COMMENT '籍贯',
  `USER_IDTYPE` varchar(32) DEFAULT NULL COMMENT '证件名称',
  `USER_IDNO` varchar(50) DEFAULT NULL COMMENT '证件号',
  `USER_ADDR` varchar(100) DEFAULT NULL COMMENT '地址',
  `USER_TEL` varchar(20) DEFAULT NULL COMMENT '电话',
  `USER_MOBILE` varchar(20) DEFAULT NULL COMMENT '手机',
  `USER_EMAIL` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `USER_STATE` varchar(32) DEFAULT NULL COMMENT '状态(0:未审核1:审核通过2：审核未通过)',
  `USER_CTDATE` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `USER_CTER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `USER_MDDATE` timestamp NULL DEFAULT NULL COMMENT '修改日期',
  `USER_MDER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `YYZZ` varchar(150) DEFAULT NULL COMMENT '营业执照',
  `JIBIE` varchar(5) DEFAULT NULL COMMENT '级别',
  `HYSL` varchar(5) DEFAULT NULL COMMENT '会员数量',
  `USER_TYPE` varchar(3) DEFAULT '' COMMENT '用户类别,0：总公司，1：代理商，2：供货商，3：会员（消费者）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_userdept`
--

DROP TABLE IF EXISTS `tf_sys_t_userdept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_userdept` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `DEPT_ID` varchar(32) NOT NULL COMMENT '组织结构ID',
  PRIMARY KEY (`USER_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_userrole`
--

DROP TABLE IF EXISTS `tf_sys_t_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_userrole` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `ROLE_ID` varchar(32) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_sys_t_wl`
--

DROP TABLE IF EXISTS `tf_sys_t_wl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_sys_t_wl` (
  `ID` varchar(32) DEFAULT NULL COMMENT '主键',
  `WLNAME` varchar(255) DEFAULT NULL COMMENT '外链名称',
  `WLWZ` varchar(255) DEFAULT NULL COMMENT '外链网址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外链';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_dept_region`
--

DROP TABLE IF EXISTS `tf_t_dept_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_dept_region` (
  `DEPT_ID` varchar(32) NOT NULL COMMENT '部门ID(部门表主键)',
  `REGION_ID` varchar(32) NOT NULL COMMENT '行政区划ID（行政区划表主键)',
  PRIMARY KEY (`DEPT_ID`,`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_domain_communicate_config`
--

DROP TABLE IF EXISTS `tf_t_domain_communicate_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_domain_communicate_config` (
  `DOMAIN` varchar(32) NOT NULL COMMENT '区域代码',
  `TYPE_ID` varchar(32) NOT NULL COMMENT '类型（字典表，开放功能取值）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_man_quick`
--

DROP TABLE IF EXISTS `tf_t_man_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_man_quick` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `COM_ID` varchar(32) DEFAULT NULL COMMENT '单位ID(引用被监督单位表主键)',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码',
  `UP_TIME` timestamp NULL DEFAULT NULL COMMENT '上报时间',
  `UP_USER` varchar(32) DEFAULT NULL COMMENT '上报人',
  `PUB_BOOK` text COMMENT '文书公共项（JSON字符串）',
  `X` decimal(18,6) DEFAULT NULL COMMENT 'X坐标平板上传',
  `Y` decimal(18,6) DEFAULT NULL COMMENT 'Y坐标平板上传',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  `RESULT` varchar(10) DEFAULT NULL COMMENT '监督结果',
  `CONTRACT_USER` varchar(32) DEFAULT NULL COMMENT '承办人',
  `PROBLEMS` varchar(500) DEFAULT NULL,
  `DBZT` varchar(10) DEFAULT NULL COMMENT '督办状态（1已督办 null未督办）',
  `IFHP` varchar(10) DEFAULT NULL COMMENT '是否存在问题（1存在问题 0不存在问题）',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_manage_dzda`
--

DROP TABLE IF EXISTS `tf_t_manage_dzda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_manage_dzda` (
  `DIC_ID` varchar(32) NOT NULL COMMENT '字典ID',
  `DIC_NAME` varchar(100) NOT NULL COMMENT '巡查内容',
  `DIC_PAREN` varchar(32) NOT NULL COMMENT '父字典',
  `DIC_ORDER` varchar(32) NOT NULL COMMENT '排序号',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码,为单位行政区划代码',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `ISFILE` varchar(2) DEFAULT NULL COMMENT '是否是文件夹',
  `COMPANY_ID` varchar(32) DEFAULT NULL COMMENT '企业id',
  PRIMARY KEY (`DIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_bookarea`
--

DROP TABLE IF EXISTS `tf_t_spv_bookarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_bookarea` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BOOK_DOMAIN` varchar(32) NOT NULL COMMENT '所属区域',
  `BOOK_ID` varchar(3) NOT NULL COMMENT '文书编号',
  `BOOK_NAME` varchar(100) NOT NULL COMMENT '文书名称',
  `BOOK_ORDER` varchar(32) DEFAULT NULL COMMENT '顺序号',
  `IS_MATSER` varchar(1) DEFAULT NULL COMMENT '是否常用',
  `BOOK_TYPE` varchar(32) DEFAULT NULL COMMENT '文书类型（字典）',
  `IS_MORE` varchar(1) DEFAULT NULL COMMENT '是否允许多文书',
  `BOOK_SEAL` varchar(3) DEFAULT NULL COMMENT '"公章编号\n{\n  空----> 不显示公章按钮\n  0 ----> 显示默认公章，例如重庆市公章 500000.png\n  1,2,3...----> 域代码_序号，例如重庆市 500000_1.png\n}"',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_bookindex`
--

DROP TABLE IF EXISTS `tf_t_spv_bookindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_bookindex` (
  `BOOK_ID` varchar(3) NOT NULL COMMENT '文书编号',
  `BOOK_NAME` varchar(100) NOT NULL COMMENT '文书名称',
  `LAW_TYPE` varchar(10) DEFAULT NULL COMMENT '执法性质分别表述为：\n    （一）“确”：产品样品确认告知书；\n（二）“鉴委”：技术鉴定委托书；\n（三）“检告”：检验结果告知书；\n    （四）“调”：职业禁忌人员调离通知书；\n    （五）“控”：卫生行政控制决定书；\n    （六）“控解”：解除卫生行政控制决定书；\n    （七）“案移”：案件移送书；\n    （八）“证保决”：证据先行登记保存决定书；\n    （九）“证保处”：证据先行登记保存处理决定书；\n    （十）“告”：行政处罚事先告知书；\n    （十一）“听告”：行政处罚听证告知书；\n    （十二）“听通”：行政处罚听证通知书；\n   ',
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_booktpl`
--

DROP TABLE IF EXISTS `tf_t_spv_booktpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_booktpl` (
  `ID` varchar(32) NOT NULL,
  `INDEX_ID` varchar(32) DEFAULT NULL,
  `TPL_ORDER` varchar(32) DEFAULT NULL,
  `TPL_CONTENT` text,
  `DOMAIN` varchar(32) DEFAULT NULL,
  `TPL_CLASS` varchar(32) DEFAULT NULL,
  `TPL_TITLE` varchar(100) DEFAULT NULL,
  `IS_MODEL` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_booktplindex`
--

DROP TABLE IF EXISTS `tf_t_spv_booktplindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_booktplindex` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BOOK_ID` varchar(3) DEFAULT NULL COMMENT '文书编号',
  `BOOK_FIELD` varchar(32) DEFAULT NULL COMMENT '文书字段',
  `BOOK_FIELDNAME` varchar(32) DEFAULT NULL COMMENT '文书字段名称',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_company`
--

DROP TABLE IF EXISTS `tf_t_spv_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_company` (
  `COM_ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `COM_DOMAIN` varchar(32) NOT NULL COMMENT '域代码,为单位行政区划代码',
  `COM_NAME` varchar(100) NOT NULL COMMENT '单位名称',
  `COM_ADDRESS` varchar(200) DEFAULT NULL COMMENT '地址',
  `COM_REGADDR` varchar(200) DEFAULT NULL COMMENT '注册地址',
  `COM_POSTCODE` varchar(10) DEFAULT NULL COMMENT '邮编',
  `COM_TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `COM_MOBILE` varchar(50) DEFAULT NULL COMMENT '手机',
  `COM_OGRCODE` varchar(20) DEFAULT NULL COMMENT '组织结构代码',
  `COM_ECMCODE` varchar(64) DEFAULT NULL COMMENT '经济类型代码',
  `COM_LEGAL` varchar(50) DEFAULT NULL COMMENT '法人(负责人)\n法人(负责人)',
  `COM_LEGALSEX` varchar(2) DEFAULT NULL COMMENT '法人(负责人)性别(1男 2女 其他未知)',
  `COM_LEGALJOB` varchar(20) DEFAULT NULL COMMENT '法人(负责人)职务',
  `COM_LEGALEMAIL` varchar(32) DEFAULT NULL COMMENT '法人(负责人)Email',
  `COM_LEGALADDR` varchar(100) DEFAULT NULL COMMENT '法人(负责人)地址',
  `COM_LEGALIDTYPE` varchar(50) DEFAULT NULL COMMENT '法人(负责人)身份证件名称',
  `COM_LEGALIDNAME` varchar(50) DEFAULT NULL COMMENT '法人(负责人)证件号码',
  `COM_REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `MODIFY_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `X86` decimal(18,6) DEFAULT NULL COMMENT '坐标X',
  `Y86` decimal(18,6) DEFAULT NULL COMMENT '坐标Y',
  `COM_NATION` varchar(100) DEFAULT NULL COMMENT '法人(负责人)民族',
  `POSITION_CODE` varchar(32) DEFAULT NULL COMMENT '位置区域',
  `LIC_TYPE` varchar(32) DEFAULT NULL COMMENT '是否有证',
  `COM_LEGALAGE` varchar(5) DEFAULT NULL COMMENT '法人(负责人)年龄',
  `GRADE` varchar(32) DEFAULT NULL COMMENT '等级',
  `SMALL_PHOTO` blob COMMENT '微缩图二进制',
  `PERSION_BUSINESS` varchar(2) DEFAULT NULL COMMENT '个体工商户（1是0否）',
  `IS_XG` varchar(32) DEFAULT NULL,
  `TREAT_TYPE` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`COM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_spvbooks`
--

DROP TABLE IF EXISTS `tf_t_spv_spvbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_spvbooks` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `REPORT_ID` varchar(32) NOT NULL COMMENT '主表ID',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码',
  `BOOK_ID` varchar(3) DEFAULT NULL COMMENT '文书编号',
  `BOOK_NAME` varchar(100) DEFAULT NULL COMMENT '文书名称',
  `BOOK_CONTENT` text COMMENT '文书内容(JSON串)',
  `IS_NEW` varchar(1) DEFAULT NULL COMMENT '是否最新(1.旧.其他 新)',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_spv_spvreport`
--

DROP TABLE IF EXISTS `tf_t_spv_spvreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_spv_spvreport` (
  `REPORT_ID` varchar(32) NOT NULL COMMENT '主键ID，UUID',
  `CLASS_ID` varchar(32) NOT NULL COMMENT '类别ID(引用单位大类表主键)',
  `COM_ID` varchar(32) DEFAULT NULL COMMENT '单位ID(引用被监督单位表主键)',
  `DOMAIN` varchar(32) DEFAULT NULL COMMENT '域代码',
  `UP_TIME` timestamp NULL DEFAULT NULL COMMENT '上报时间',
  `UP_USER` varchar(32) DEFAULT NULL COMMENT '上报人',
  `STATUS` varchar(1) DEFAULT NULL COMMENT '监督状态（0合格、1整改、2处罚）',
  `PUB_BOOK` text COMMENT '文书公共项（JSON字符串）',
  `CLASS_IDS` varchar(500) DEFAULT NULL COMMENT '综合执法',
  `X` decimal(18,6) DEFAULT NULL COMMENT 'X坐标平板上传',
  `Y` decimal(18,6) DEFAULT NULL COMMENT 'Y坐标平板上传',
  `DEVICE_CODE` varchar(32) DEFAULT NULL COMMENT '平板号',
  PRIMARY KEY (`REPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_t_task_book_print`
--

DROP TABLE IF EXISTS `tf_t_task_book_print`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_t_task_book_print` (
  `TASK_ID` varchar(32) NOT NULL COMMENT '主键ID',
  `TASK_DOMAIN` varchar(32) NOT NULL COMMENT '域代码,为单位行政区划代码',
  `TASK_OPNAME` varchar(50) DEFAULT NULL COMMENT '业务名称，业务表名称',
  `TASK_OPKEY` varchar(32) DEFAULT NULL COMMENT '业务键，业务表主键',
  `TASK_OPNO` varchar(32) DEFAULT NULL COMMENT '业务序号（对应巡回监督，快速出证上报文书表ID）',
  `BOOK_ID` varchar(32) DEFAULT NULL COMMENT '文书编号（001，002等）',
  `APPLY_USER_ID` varchar(32) DEFAULT NULL COMMENT '申请人（对应用户表主键ID）',
  `APPLY_CONTENT` varchar(500) DEFAULT NULL COMMENT '申请内容',
  `APPLY_TIME` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `CHECK_USER_ID` varchar(32) DEFAULT NULL COMMENT '审核人（对应用户表主键ID）',
  `CHECK_CONTENT` varchar(500) DEFAULT NULL COMMENT '审核内容',
  `CHECK_TIME` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `TASK_STATE` varchar(2) DEFAULT NULL COMMENT '审核状态（0  未审核；1 审核通过；2 审核不通过 ；3 公章打印）',
  `COM_ID` varchar(32) DEFAULT NULL COMMENT '对应单位表主键ID',
  PRIMARY KEY (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15 15:45:21
