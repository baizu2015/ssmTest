create database if not exists scorpio_database 
default charset utf8 collate utf8_general_ci;
drop table if exists T_User;
drop table if exists T_User_Info;
drop table if exists T_user_Merchant;
create table T_User(
	id int not null primary key auto_increment COMMENT '用户编号',
	userName varchar(31) COMMENT '登陆名称',
	password varchar(63) COMMENT '密码',
	email varchar(32) COMMENT '邮箱',
	mobile varchar(32) COMMENT '电话',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP,
	is_enabled char(1) comment '是否启用',
	login_ip varchar(31) comment '最后登录ip地址',
	user_Type int comment '用户类型,ex:商家，普通会员',
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='登录用户表';

create table T_User_Info(
	id int not null primary key auto_increment COMMENT '用户基本信息编号',
	userId int comment 'T_User编号',
	realName varchar(255) COMMENT '真实姓名（显示的名称）',
	fristName varchar(255) COMMENT '姓',
	lastName varchar(255) Comment '名',
	unitId int COMMENT '单位编号',
	email varchar(255) COMMENT '邮箱',
	mobile varchar(255) COMMENT '手机',
	address varchar(255) COMMENT '地址',
	photo varchar(255) COMMENT '头像',
	balance DECIMAL(9,2) comment '余额',
	brith Datetime comment '出生年月',
	point int comment '积分',
	phone varchar(255) comment '电话',
	areaID int comment '地域',
	gender char(1) comment '性别',
	rank int comment '用户等级',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='用户信息表';

create table T_user_Merchant(
	id int not null primary key auto_increment COMMENT '商家基本信息编号',
	UserID int comment '登录用户';
	logoUrl varchar(255) comment '商家logo',
	merName varchar(255) comment '商家名称',
	merlicense varchar(255) comment '营业执照',
	merType int comment '商家类型',
	legal varchar(255) comment '法人',
	marketCharge varchar(255) comment '营销主管',
	phone varchar(255) comment '联系电话',
	companyWechat varchar(255) comment '企业微信',
	companyQQ varchar(255) comment '企业扣扣',
	companyAddress varchar(255) comment '企业地址',
	companyArea int comment '企业区域',
	companyRemark varchar(511) '企业简介',
	creatDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='商家信息表';
