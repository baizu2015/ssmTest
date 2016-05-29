drop table if exists T_cart;
drop table if exists T_cart_Item;
create table T_cart(
	id int not null primary key auto_increment COMMENT '购物车编号',
	UserId int comment '用户编号',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='购物车表';

create table T_cart_Item(
	id int not null primary key auto_increment COMMENT '购物车项',
	quantity int COMMENT '商品数量',
	cartId int COMMENT '所属购物车',
	productId int comment '商品',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '创建时间'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='购物车项表';