drop table user_table purge;
create table user_table(
 user_idx number constraint user_pk primary key,
 user_name varchar2(50) not null,
 user_id varchar2(100) unique not null,
 user_pw varchar2(100)not null
);
-- user_table 컬럼 추가-------------------------------
alter table user_table add user_addr varchar2(500);
alter table user_table add user_birth DATE;
------------------------------------------------
select * from user_table;

-- 상품 테이블--
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
-----------------------------------------------------------------------

-- 상단 메뉴 테이블 ----
drop table top_info_table purge;
create table top_info_table(
	top_info_idx number constraint top_INFO_PK primary key,
	top_info_name varchar2(500) not null
);

insert into top_info_table(top_info_idx, top_info_name) values (1, 'RED');
insert into top_info_table(top_info_idx, top_info_name) values (2, 'ORANGE');
insert into top_info_table(top_info_idx, top_info_name) values (3, 'YELLOW');
insert into top_info_table(top_info_idx, top_info_name) values (4, 'GREEN');
insert into top_info_table(top_info_idx, top_info_name) values (5, 'BLUE-PURPLE');
insert into top_info_table(top_info_idx, top_info_name) values (6, 'BLACK');
--------------------------------------------------------------------------------------
select * from top_info_table;

--글삭제 query문
delete from board_info_table where board_info_idx=7;
select * from board_info_table;



-- 장바구니 테이블
drop table cart_table purge;
create table cart_table(
    cart_id number not null primary key,
    user_id varchar2(30) not null,
    product_id number not null,
    amount number default 0
);
-- 장바구니 sequence
create sequence cart_seq
start with 1
increment by 1
minvalue 0;


-- 테이블 확인 하기
select * from cart_table;
select * from product_table;
select * from user_table;


------- 게시판 테이블 -----
drop table board_info_table purge;
create table board_info_table(
	board_info_idx number constraint BOARD_INFO_PK primary key,
	board_info_name varchar2(500) not null
);
update board_info_table set board_info_name='QA' where  board_info_idx=1;
update board_info_table set board_info_name='교환' where  board_info_idx=2;
update board_info_table set board_info_name='환불' where  board_info_idx=3;
update board_info_table set board_info_name='취소' where  board_info_idx=4;


-- 게시판 글 테이블
select * from board_info_table;
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



commit;


rollback;
