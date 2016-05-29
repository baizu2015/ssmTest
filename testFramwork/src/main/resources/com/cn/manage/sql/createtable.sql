drop table if exists T_sys_User;
drop table if exists T_sys_user_group;
drop table if exists T_sys_group;
drop table if exists T_sys_module;
drop table if exists T_sys_permission;
drop table if exists T_sys_Role;
drop table if exists T_sys_Role_Permission;
drop table if exists T_sys_User_Role;
create table T_sys_User(
	id int not null primary key auto_increment COMMENT '���',
	userName varchar(32) COMMENT '��½����',
	password varchar(64) COMMENT '����',
	realName varchar(32) COMMENT '��ʵ��������ʾ�����ƣ�',
	unitId int COMMENT '��λ���',
	email varchar(32) COMMENT '����',
	mobile varchar(32) COMMENT '�绰',
	address varchar(128) COMMENT '��ַ',
	photo varchar(32) COMMENT 'ͷ��',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�û���Ϣ��';

create table T_sys_user_group(
	id int not null primary key auto_increment COMMENT '���',
	userId int COMMENT '�û����' ,
	groupId int COMMENT '����',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�û�������Ȩ�ޱ�ex:���û�����';

create table T_sys_group(
	id int not null primary key auto_increment COMMENT '���',
	groupName varchar(32) COMMENT '������',
	groupMemberId int COMMENT '���Ա���',
	memberOperaId int COMMENT '���Ա������',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='����Ϣ��ex:��ɫ��ӵ��Ȩ��';

create table T_sys_module(
	id int not null primary key auto_increment COMMENT 'ģ����',
	moduleName varchar(32) COMMENT 'ģ������',
	moduleCode varchar(16) COMMENT 'ģ�����',
	moduleUrl varchar(16) COMMENT 'ģ��url',
	moduleParentCode varchar(16) COMMENT 'ģ�鸸������',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='ģ����Ϣ��ex:��Ҫ��ҳ����ʾ��ģ��';

create table T_sys_permission(
	id int not null primary key auto_increment COMMENT 'Ȩ�ޱ��',
	operaName varchar(32) COMMENT '����������',
	operaCode varchar(16) COMMENT '���������',
	moduleId int COMMENT 'ģ����',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='������Ϣ��ex:�鿴���޸ģ���Ӱ�ť����ʾ';

create table T_sys_Role(
	id int not null primary key auto_increment COMMENT '��ɫ���',
	roleDescript varchar(32) COMMENT '��ɫ����',
	roleName varchar(16) COMMENT '��ɫ��',
	moduleId int COMMENT 'ģ����',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='��ɫ��Ϣ��ex:XX��ɫ';

create table T_sys_Role_Permission(
	id int not null primary key auto_increment COMMENT '���',
	permissionId int COMMENT 'Ȩ�ޱ��',
	roleId int COMMENT '��ɫ���'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='��ɫȨ�޹�ϵ��';

create table T_sys_User_Role(
	id int not null primary key auto_increment COMMENT '���',
	userId int COMMENT '�û����',
	roleId int COMMENT '��ɫ���'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�û���ɫ��ϵ��';

 