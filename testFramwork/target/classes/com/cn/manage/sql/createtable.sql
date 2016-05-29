drop table if exists T_sys_User;
drop table if exists T_sys_user_group;
drop table if exists T_sys_group;
drop table if exists T_sys_module;
drop table if exists T_sys_permission;
drop table if exists T_sys_Role;
drop table if exists T_sys_Role_Permission;
drop table if exists T_sys_User_Role;
create table T_sys_User(
	id int not null primary key auto_increment COMMENT '编号',
	userName varchar(32) COMMENT '登陆名称',
	password varchar(64) COMMENT '密码',
	realName varchar(32) COMMENT '真实姓名（显示的名称）',
	unitId int COMMENT '单位编号',
	email varchar(32) COMMENT '邮箱',
	mobile varchar(32) COMMENT '电话',
	address varchar(128) COMMENT '地址',
	photo varchar(32) COMMENT '头像',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='用户信息表';

create table T_sys_user_group(
	id int not null primary key auto_increment COMMENT '编号',
	userId int COMMENT '用户编号' ,
	groupId int COMMENT '组编号',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='用户所属组权限表ex:给用户分组';

create table T_sys_group(
	id int not null primary key auto_increment COMMENT '编号',
	groupName varchar(32) COMMENT '组名称',
	groupMemberId int COMMENT '组成员编号',
	memberOperaId int COMMENT '组成员操作项',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='组信息表ex:角色的拥有权限';

create table T_sys_module(
	id int not null primary key auto_increment COMMENT '模块编号',
	moduleName varchar(32) COMMENT '模块名称',
	moduleCode varchar(16) COMMENT '模块编码',
	moduleUrl varchar(16) COMMENT '模块url',
	moduleParentCode varchar(16) COMMENT '模块父级编码',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='模块信息表ex:主要是页面显示的模块';

create table T_sys_permission(
	id int not null primary key auto_increment COMMENT '权限编号',
	operaName varchar(32) COMMENT '操作项名称',
	operaCode varchar(16) COMMENT '操作项编码',
	moduleId int COMMENT '模块编号',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='操作信息表ex:查看，修改，添加按钮的显示';

create table T_sys_Role(
	id int not null primary key auto_increment COMMENT '角色编号',
	roleDescript varchar(32) COMMENT '角色描述',
	roleName varchar(16) COMMENT '角色名',
	moduleId int COMMENT '模块编号',
	createDate timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='角色信息表ex:XX角色';

create table T_sys_Role_Permission(
	id int not null primary key auto_increment COMMENT '编号',
	permissionId int COMMENT '权限编号',
	roleId int COMMENT '角色编号'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='角色权限关系表';

create table T_sys_User_Role(
	id int not null primary key auto_increment COMMENT '编号',
	userId int COMMENT '用户编号',
	roleId int COMMENT '角色编号'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='用户角色关系表';

 