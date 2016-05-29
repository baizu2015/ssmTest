drop table if exists T_coupon;
drop table if exists T_coupon_code;
create table T_coupon(
	id int not null primary key auto_increment COMMENT '优惠券编号',
	name varchar(31) comment '优惠卷名称',
	beginDate Datetime comment '优惠卷开始时间',
	endData Datetime comment '优惠卷结束时间',
	description varchar(255) comment '优惠卷描述',
	is_enabled char(1) comment '是否启用',
	is_exchangeByScore char(1) comment '是否允许积分兑换',
	pointsNum int comment '积分允许兑换的数量'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='优惠券表';

create table T_coupon_code(
	id int not null primary key auto_increment COMMENT '优惠码编号',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间',
	code varchar(63) comment '号码',
	is_used char(1) comment '是否被使用',
	useDate Datetime comment '被使用时间',
	couponId int comment '优惠卷',
	userID int comment '会员'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='优惠码兑换优惠卷';