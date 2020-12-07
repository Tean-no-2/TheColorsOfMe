drop table user_table purge;
create table user_table(
 user_idx number constraint user_pk primary key,
 user_name varchar2(50) not null,
 user_id varchar2(100) unique not null,
 user_pw varchar2(100)not null,
 user_addr varchar2(500) not null,
 user_birth Date
);
-- user_table 컬럼 추가-------------------------------
alter table user_table add user_addr varchar2(500);
alter table user_table add user_birth DATE;
------------------------------------------------
select * from user_table;

insert into user_table values(55, '을지문덕', 'korea', '1111', '평양', sysdate);
insert into user_table values(2, '이순신', 'tjoeun', '2222', ' 서울', sysdate);


drop table product_table purge;
create table product_table(
    product_id number primary key,
    product_name varchar2(50),
    product_en_name varchar2(50),
    product_color varchar2(50),
    product_price number default 0,
    product_origin varchar2(50),
    product_img varchar2(50),
    product_info varchar2(50)
    );
create sequence p_seq
start with 1
increment by 1
minvalue 0;

insert into product_table values(	1,	'토마토',	'tomato',	'RED',	13500,	'국내산',	'fruit01.jpg',	'fruit_detail01.png'	);
insert into product_table values(	2,	'딸기',	'strawberry',	'RED',	41500,	'국내산',	'fruit02.jpg',	'fruit_detail02.png'	);
insert into product_table values(	3,	'수박',	'watermelon',	'RED',	19900,	'국내산',	'fruit03.jpg',	'fruit_detail03.png'	);
insert into product_table values(	4,	'사과',	'apple',	'RED',	18900,	'국내산',	'fruit04.jpg',	'fruit_detail04.png'	);
insert into product_table values(	5,	'석류',	'pomegranate',	'RED',	25900,	'수입산',	'fruit05.jpg',	'fruit_detail05.png'	);
insert into product_table values(	6,	'고추',	'red pepper',	'RED',	1980,	'국내산',	'fruit06.jpg',	'fruit_detail06.png'	);
insert into product_table values(	7,	'호박',	'pumpkin',	'YELLOW',	6980,	'국내산',	'fruit07.jpg',	'fruit_detail07.png'	);
insert into product_table values(	8,	'파프리카',	'pepper',	'YELLOW',	3480,	'수입산',	'fruit08.jpg',	'fruit_detail08.png'	);
insert into product_table values(	9,	'오렌지',	'orange',	'YELLOW',	15900,	'수입산',	'fruit09.jpg',	'fruit_detail09.png'	);
insert into product_table values(	10,	'바나나',	'banana',	'YELLOW',	4980,	'수입산',	'fruit10.jpg',	'fruit_detail10.png'	);
insert into product_table values(	11,	'파인애플',	'pineapple',	'YELLOW',	19900,	'수입산',	'fruit11.jpg',	'fruit_detail11.png'	);
insert into product_table values(	12,	'레몬',	'lemon',	'YELLOW',	7800,	'수입산',	'fruit12.jpg',	'fruit_detail12.png'	);
insert into product_table values(	13,	'키위',	'kiwi',	'GREEN',	27900,	'수입산',	'fruit13.jpg',	'fruit_detail13.png');
insert into product_table values(	14,	'매실',	'plum',	'GREEN',	15900,	'국내산',	'fruit14.jpg',	'fruit_detail14.png'	);
insert into product_table values(	15,	'녹차',	'greem tea',	'GREEN',	9800,	'국내산',	'fruit15.jpg',	'fruit_detail15.png'	);
insert into product_table values(	16,	'오이',	'cucumber',	'GREEN',	3480,	'국내산',	'fruit16.jpg',	'fruit_detail16.png'	);
insert into product_table values(	17,	'시금치',	'spinach',	'GREEN',	2480,	'국내산',	'fruit17.jpg',	'fruit_detail17.png'	);
insert into product_table values(	18,	'브로콜리',	'broccoli',	'GREEN',	17900,	'수입산',	'fruit18.jpg',	'fruit_detail18.png'	);
insert into product_table values(	19,	'양파',	'onion',	'WHITE',	3980,	'국내산',	'fruit19.jpg',	'fruit_detail19.png'	);
insert into product_table values(	20,	'무',	'radish',	'WHITE',	7980,	'국내산',	'fruit20.jpg',	'fruit_detail20.png'	);
insert into product_table values(	21,	'마늘',	'garlic',	'WHITE',	6980,	'국내산',	'fruit21.jpg',	'fruit_detail21.png'	);
insert into product_table values(	22,	'배',	'pear',	'WHITE',	34900,	'국내산',	'fruit22.jpg',	'fruit_detail22.png'	);
insert into product_table values(	23,	'생강',	'ginger',	'WHITE',	18900,	'국내산',	'fruit23.jpg',	'fruit_detail23.png'	);
insert into product_table values(	24,	'버섯',	'mushroom',	'WHITE',	1980,	'국내산',	'fruit24.jpg',	'fruit_detail24.png'	);
insert into product_table values(	25,	'포도',	'grape',	'PURPLE',	19800,	'수입산',	'fruit25.jpg',	'fruit_detail25.png'	);
insert into product_table values(	26,	'블루베리',	'blueberries',	'PURPLE',	29900,	'수입산',	'fruit26.jpg',	'fruit_detail26.png'	);
insert into product_table values(	27,	'적색양배추',	'red cabbage',	'PURPLE',	3980,	'수입산',	'fruit27.jpg',	'fruit_detail27.png'	);
insert into product_table values(	28,	'가지',	'eggplant',	'PURPLE',	2980,	'국내산',	'fruit28.jpg',	'fruit_detail28.png'	);
insert into product_table values(	29,	'오디',	'mulberry',	'PURPLE',	25000,	'국내산',	'fruit29.jpg',	'fruit_detail29.png'	);
insert into product_table values(	30,	'흑미',	'black rice',	'PURPLE',	7900,	'국내산',	'fruit30.jpg',	'fruit_detail30.png'	);
-----------------------------------------------------------------------
select * from product_table;

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
drop table content_table purge;
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

create sequence content_seq
start with 1
increment by 1
minvalue 0;

commit;


rollback;


select * from user_table;

select * from content_table;

select product_id,product_name,product_en_name,product_color,product_price,product_origin,product_img
       from product_table
       where product_color='RED';
            
            rollback;