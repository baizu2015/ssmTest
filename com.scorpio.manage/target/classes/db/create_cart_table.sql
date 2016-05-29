drop table if exists T_cart;
drop table if exists T_cart_Item;
create table T_cart(
	id int not null primary key auto_increment COMMENT '���ﳵ���',
	UserId int comment '�û����',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '����ʱ��'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='���ﳵ��';

create table T_cart_Item(
	id int not null primary key auto_increment COMMENT '���ﳵ��',
	quantity int COMMENT '��Ʒ����',
	cartId int COMMENT '�������ﳵ',
	productId int comment '��Ʒ',
	createDate timestamp not NULL DEFAULT CURRENT_TIMESTAMP comment '����ʱ��'
)engine=innodb default charset=utf8 auto_increment=1 COMMENT='���ﳵ���';