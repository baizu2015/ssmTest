drop table if exists T_Delivery_center;
create table T_Delivery_center(
	id int not null primary key auto_increment COMMENT '��������',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '����ʱ��',
	adress varchar(255) comment '��ַ',
	contact varchar(255) comment '��ϵ��',
	is_Default char(1) comment '�Ƿ�Ĭ��',
	remark varchar(255) comment '��ע',
	mobile varchar(255) comment '�ֻ�',
	phone varchar(255) comment '�绰',
	zipCode varchar(255) comment '�ʱ�',
	areaID int comment '�������',
	UserId int comment 'ӵ����' 
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�������';