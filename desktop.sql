drop table user_table purge;
create table user_table(
 user_idx number constraint user_pk primary key,
 user_name varchar2(50) not null,
 user_id varchar2(100) unique not null,
 user_pw varchar2(100)not null
);
select * from user_table;

select id ,pw from member;

drop table product_table purge;
create table product_table(
    product_id number primary key,
    product_name varchar2(50),
    product_price number default 0,
    product_url varchar2(500)
);
create sequence p_seq
start with 1
increment by 1
minvalue 0;

insert into product_table values(1,'스프라이트 니트',30000,'top1.PNG');
insert into product_table values(2,'소프트 니트',32000,'top2.PNG');
insert into product_table values(3,'브이넥 니트',24000,'top3.PNG');
insert into product_table values(4,'울 피치 반폴라',36000,'top4.PNG');

select * from product_table;
select product_id,product_name,product_price,product_url from tbl_product;

drop table cart purge;
create table cart(
cart_id number not null primary key,
id varchar2(50) not null,
product_id number not null,
amount number default 0
);

create sequence seq_cart  
start with 1
increment by 1;


create table content_table(
	content_idx number constraint CONTENT_PK primary key,
	content_subject varchar2(500) not null,
	content_text long not null,
	content_file varchar2(500),
	content_writer_idx number not null
	                   constraint CONTENT_FK1 references user_table(user_idx),
	content_board_idx number not null
	                  constraint CONTENT_FK2 references board_info_table(board_info_idx),
	content_date date not null
);

select * from content_table;

drop table cart_table purge;
create table cart_table(
    cart_id number not null primary key,
    user_id varchar2(30) not null,
    product_id number not null,
    amount number default 0
);
create sequence cart_seq
start with 1
increment by 1
minvalue 0;

select * from cart_table;
select * from product_table;
select * from user_table;

commit;


rollback;
