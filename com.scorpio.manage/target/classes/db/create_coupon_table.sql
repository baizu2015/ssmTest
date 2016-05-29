drop table if exists T_coupon;
drop table if exists T_coupon_code;
create table T_coupon(
	id int not null primary key auto_increment COMMENT '�Ż�ȯ���',
	name varchar(31) comment '�Żݾ�����',
	beginDate Datetime comment '�Żݾ�ʼʱ��',
	endData Datetime comment '�Żݾ����ʱ��',
	description varchar(255) comment '�Żݾ�����',
	is_enabled char(1) comment '�Ƿ�����',
	is_exchangeByScore char(1) comment '�Ƿ�������ֶһ�',
	pointsNum int comment '��������һ�������'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�Ż�ȯ��';

create table T_coupon_code(
	id int not null primary key auto_increment COMMENT '�Ż�����',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '����ʱ��',
	code varchar(63) comment '����',
	is_used char(1) comment '�Ƿ�ʹ��',
	useDate Datetime comment '��ʹ��ʱ��',
	couponId int comment '�Żݾ�',
	userID int comment '��Ա'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='�Ż���һ��Żݾ�';