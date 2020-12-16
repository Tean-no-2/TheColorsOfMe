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

------------------------------------------------

--------제품 테이블----------------------------
drop table product_table purge;
create table product_table(
    product_id number primary key,
    product_name varchar2(50),
    product_en_name varchar2(50),
    product_color varchar2(50),
    product_price number default 0,
    product_origin varchar2(50),
    product_img varchar2(50),
    product_purchase_img varchar2(50),
    product_info varchar2(500)
    );
    
insert into product_table values(	1,	'토마토',	'tomato',	'red',	13500,	'국내산',	'red_main1.jpg',	'red_purchase1.jpg',	'토마토는?그?무엇도?될?수?있어요. tom made tomato'	);
insert into product_table values(	2,	'딸기',	'Strawberry',	'red',	41500,	'국내산',	'red_main2.png',	'red_purchase2.png','딸기는?달고?향기로워. strawberry very merries you'	);
insert into product_table values(	3,	'수박',	'watermelon',	'red',	19900,	'국내산',	'red_main3.png',	'red_purchase3.png',	'진하게 달콤한 체리의 과육. cherry carries nutrient');
insert into product_table values(	4,	'사과',	'apple',	'red',	18900,	'국내산',	'red_main4.jpg',	'red_purchase4.jpg',	'한입 베어무는 건강한 미래, 이미 내 손 안에. apple is lucxury'	);
insert into product_table values(	5,	'석류',	'pomegranate',	'red',	25900,	'수입산',	'red_main5.jpg',	'red_purchase5.jpg',	'보석 같은 과육. Pomegranate is watching poem'	);
insert into product_table values(	6,	'고추',	'redpepper',	'red',	1980,	'국내산',	'red_main6.jpg',	'red_purchase6.jpg',	'매운맛에는.달콤함과 감칠맛이 들어있다. red pepper is the taste mapper'	);
insert into product_table values(	7,	'호박',	'pumpkin',	'yellow',	6980,	'국내산',	'yellow_main7.png ',	'yellow_purchase7.png','호박의 흐름을 바꾸다. Pumpkin old'	);
insert into product_table values(	8,	'파프리카',	'pepper',	'yellow',	3480,	'수입산',	'yellow_main8.png',	'yellow_purchase8.png',	'프로 중의 프로. Paprika'	);
insert into product_table values(	9,	'오렌지',	'orange',	'yellow',	15900,	'수입산',	'yellow_main9.jpg',	'yellow_purchase9.jpg','건강의 미래, 이미 내 손 안에. Orange'		);
insert into product_table values(	10,	'바나나',	'banana',	'yellow',	4980,	'수입산',	'yellow_main10.png',	'yellow_purchase10.png',	'손색없다.?부담없다. Banana'	);
insert into product_table values(	11,	'파인애플',	'pineapple',	'yellow',	19900,	'수입산',	'yellow_main11.jpg',	'yellow_purchase11.jpg',	'새로운 파워. 어마무시한 가능성. Pineapple'	);
insert into product_table values(	12,	'레몬',	'lemon',	'yellow',	7800,	'수입산',	'yellow_main12.png',	'yellow_purchase12.png',	'강력하다.다채롭다.경이롭다. Lemon'		);
insert into product_table values(	13,	'키위',	'kiwi',	'green',	27900,	'수입산',	'green_main13.jpg',	'green_purchase13.jpg',	'섭취한?단백질을?피와?살로. kiwi will be king'	);
insert into product_table values(	14,	'완두콩',	'pea',	'green',	15900,	'국내산',	'green_main14.png',	'green_purchase14.png',	'이?한알로?잉태되는?하나의?생명. green bean Are you agree?'	);
insert into product_table values(	15,	'녹차',	'greentea',	'green',	9800,	'국내산',	'green_main15.jpg',	'green_purchase15.jpg',	'보이는?색과?맛과?향이?같아. green color green taste'	);
insert into product_table values(	16,	'오이',	'cucumber',	'green',	3480,	'국내산',	'green_main16.jpg',	'green_purchase16.jpg',	'오이, 가장 촉촉한 채소. cucumber sounds cute'	);
insert into product_table values(	17,	'시금치',	'spinach',	'green',	2480,	'국내산',	'green_main17.jpg',	'green_purchase17.jpg','고급스럽게,?요리하기?좋은. Spinach'	);
insert into product_table values(	18,	'브로콜리',	'broccoli',	'green',	17900,	'수입산',	'green_main18.jpg',	'green_purchase18.jpg',	'초장과?함께라면?가장?맛있는?색깔. Broccoli'	);
insert into product_table values(	19,	'양파',	'onion',	'white',	3980,	'국내산',	'white_main19.jpg',	'white_purchase19.jpg',	'고기?다음으로?중요한?맛. onion is only one'	);
insert into product_table values(	20,	'무',	'radish',	'white',	7980,	'국내산',	'white_main20.jpg',	'white_purchase20.jpg','무와?함께하지?않은적이?없어요. radish on my dish'	);
insert into product_table values(	21,	'마늘',	'garlic',	'white',	6980,	'국내산',	'white_main21.jpg',	'white_purchase21.jpg',	'새로운?파워.?어마무시한?가능성. garlic on flavor.'	);
insert into product_table values(	22,	'배',	'pear',	'white',	34900,	'국내산',	'white_main22.jpg',	'white_purchase22.jpg',	'맛?있고?몸에?좋기?힘든데?해냈다. pear is pair game'	);
insert into product_table values(	23,	'생강',	'ginger',	'white',	18900,	'국내산',	'white_main23.jpg',	'white_purchase23.jpg','생강은?원래?이렇게?생겼어요. ginger moves like zinza'	);
insert into product_table values(	24,	'버섯',	'mushroom',	'white',	1980,	'국내산',	'white_main24.jpg',	'white_purchase24.jpg',	'향이나고.?풍미가?짙고.?경이롭다. mushroom wish your dish'	);
insert into product_table values(	25,	'포도',	'grape',	'purple',	19800,	'수입산',	'purple_main25.jpg',	'purple_purchase25.jpg','항산화?세월을?바꾸다. The greatest grape'	);
insert into product_table values(	26,	'블루베리',	'blueberries',	'purple',	29900,	'수입산',	'purple_main26.jpg',	'purple_purchase26.jpg','우울한?기분?먹어서?혼내주자. Blueberry'	);
insert into product_table values(	27,	'적색양배추',	'redcabbage',	'purple',	3980,	'수입산',	'purple_main27.jpg',	'purple_purchase27.jpg',	'아픈?위장에?건강한?양배추. Cabbage'	);
insert into product_table values(	28,	'가지',	'eggplant',	'purple',	2980,	'국내산',	'purple_main28.jpg',	'purple_purchase28.jpg'	,'새로운 식감, 어른스런 풍미. EggPlant');
insert into product_table values(	29,	'오디',	'mulberry',	'purple',	25000,	'국내산',	'purple_main29.jpg',	'purple_purchase29.jpg'	,'이보다?고급스러운?달콤함이?있을까요. Mulberry'	);
insert into product_table values(	30,	'흑미',	'blackrice',	'purple',	7900,	'국내산',	'purple_main30.jpg',	'purple_purchase30.jpg',	'요즘 제가 자주 마셔요. Coffee'	);

commit;  
-----------------------------------------------------------------------------------------


select * from product_table;

-------------------------------------------------------------------------
drop table productImg_table purge;
create table productImg_table(
    product_id number,
    main_img varchar2(300)
);


insert into productImg_table values(7,'fruit07-5.png');
insert into productImg_table values(7,'fruit07-1.png');
insert into productImg_table values(7,'fruit07-2.png');
insert into productImg_table values(7,'fruit07-3.png');

insert into productImg_table values(8,'paprika1.jpg');
insert into productImg_table values(8,'paprika2.jpg');
insert into productImg_table values(8,'paprika3.jpg');
insert into productImg_table values(8,'paprika4.jpg');

select * from productImg_table; 

commit;

create sequence p_seq
start with 1
increment by 1
minvalue 0;
-----------------------------------------------------------------------------------------------


update product_table set product_img='paprika1.jpg' where  product_id=8;
select * from product_table;
rollback;
commit;

-----------------------------------------------------------

--글삭제 query문
delete from board_info_table where board_info_idx=7;
select * from board_info_table;



-- 장바구니 테이블-------------------------------------------------------
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


-- 게시판 글 테이블----------------------------------------------
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

select * from content_table;

commit;


rollback;

