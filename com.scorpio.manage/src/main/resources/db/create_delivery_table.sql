drop table if exists T_Delivery_center;
create table T_Delivery_center(
	id int not null primary key auto_increment COMMENT '发货点编号',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间',
	adress varchar(255) comment '地址',
	contact varchar(255) comment '联系人',
	is_Default char(1) comment '是否默认',
	remark varchar(255) comment '备注',
	mobile varchar(255) comment '手机',
	phone varchar(255) comment '电话',
	zipCode varchar(255) comment '邮编',
	areaID int comment '地区编号',
	UserId int comment '拥有者' 
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='发货点表';