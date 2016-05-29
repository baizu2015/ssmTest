create database if not exists scorpio_database 
default charset utf8 collate utf8_general_ci;
drop table if exists T_User;
drop table if exists T_User_Info;
drop table if exists T_user_Merchant;
create table T_User(
	id int not null primary key auto_increment COMMENT '�û����',
	userName varchar(31) COMMENT '��½����',
	password varchar(63) COMMENT '����',
	email varchar(32) COMMENT '����',
	mobile varchar(32) COMMENT '�绰',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP,
	is_enabled char(1) comment '�Ƿ�����',
	login_ip varchar(31) comment '����¼ip��ַ',
	user_Type int comment '�û�����,ex:�̼ң���ͨ��Ա',
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='��¼�û���';

create table T_User_Info(
	id int not null primary key auto_increment COMMENT '�û�������Ϣ���',
	userId int comment 'T_User���',
	realName varchar(255) COMMENT '��ʵ��������ʾ�����ƣ�',
	fristName varchar(255) COMMENT '��',
	lastName varchar(255) Comment '��',
	unitId int COMMENT '��λ���',
	email varchar(255) COMMENT '����',
	mobile varchar(255) COMMENT '�ֻ�',
	address varchar(255) COMMENT '��ַ',
	photo varchar(255) COMMENT 'ͷ��',
	balance DECIMAL(9,2) comment '���',
	brith Datetime comment '��������',
	point int comment '����',
	phone varchar(255) comment '�绰',
	areaID int comment '����',
	gender char(1) comment '�Ա�',
	rank int comment '�û��ȼ�',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�û���Ϣ��';

create table T_user_Merchant(
	id int not null primary key auto_increment COMMENT '�̼һ�����Ϣ���',
	UserID int comment '��¼�û�';
	logoUrl varchar(255) comment '�̼�logo',
	merName varchar(255) comment '�̼�����',
	merlicense varchar(255) comment 'Ӫҵִ��',
	merType int comment '�̼�����',
	legal varchar(255) comment '����',
	marketCharge varchar(255) comment 'Ӫ������',
	phone varchar(255) comment '��ϵ�绰',
	companyWechat varchar(255) comment '��ҵ΢��',
	companyQQ varchar(255) comment '��ҵ�ۿ�',
	companyAddress varchar(255) comment '��ҵ��ַ',
	companyArea int comment '��ҵ����',
	companyRemark varchar(511) '��ҵ���',
	creatDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�̼���Ϣ��';
