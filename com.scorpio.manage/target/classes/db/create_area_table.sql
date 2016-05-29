drop table if exists T_Area;
create table T_Area(
	id int not null primary key auto_increment COMMENT '地区编号',
	name varchar(31) comment '地区名称',
	full_name varchar(63) comment '地区全程',
	parentId int COMMENT '上级区域',
	orderIndex int comment '排序'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='地域地区表';