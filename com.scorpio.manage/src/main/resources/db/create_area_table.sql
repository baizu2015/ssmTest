drop table if exists T_Area;
create table T_Area(
	id int not null primary key auto_increment COMMENT '�������',
	name varchar(31) comment '��������',
	full_name varchar(63) comment '����ȫ��',
	parentId int COMMENT '�ϼ�����',
	orderIndex int comment '����'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='���������';