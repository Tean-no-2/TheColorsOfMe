drop table user_table purge;
create table user_table(
 user_idx number constraint user_pk primary key,
 user_name varchar2(50) not null,
 user_id varchar2(100) unique not null,
 user_pw varchar2(100)not null,
 user_addr varchar2(500) not null,
 user_birth Date
);
-- user_table �÷� �߰�-------------------------------
alter table user_table add user_addr varchar2(500);
alter table user_table add user_birth DATE;
------------------------------------------------
select * from user_table;

------------------------------------------------

--------��ǰ ���̺�----------------------------
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
    
insert into product_table values(	1,	'�丶��',	'tomato',	'red',	13500,	'������',	'red_main1.jpg',	'red_purchase1.jpg',	'�丶���?��?������?��?��?�־��. tom made tomato'	);
insert into product_table values(	2,	'����',	'Strawberry',	'red',	41500,	'������',	'red_main2.png',	'red_purchase2.png','�����?�ް�?���ο�. strawberry very merries you'	);
insert into product_table values(	3,	'����',	'watermelon',	'red',	19900,	'������',	'red_main3.png',	'red_purchase3.png',	'���ϰ� ������ ü���� ����. cherry carries nutrient');
insert into product_table values(	4,	'���',	'apple',	'red',	18900,	'������',	'red_main4.jpg',	'red_purchase4.jpg',	'���� ����� �ǰ��� �̷�, �̹� �� �� �ȿ�. apple is lucxury'	);
insert into product_table values(	5,	'����',	'pomegranate',	'red',	25900,	'���Ի�',	'red_main5.jpg',	'red_purchase5.jpg',	'���� ���� ����. Pomegranate is watching poem'	);
insert into product_table values(	6,	'����',	'redpepper',	'red',	1980,	'������',	'red_main6.jpg',	'red_purchase6.jpg',	'�ſ������.�����԰� ��ĥ���� ����ִ�. red pepper is the taste mapper'	);
insert into product_table values(	7,	'ȣ��',	'pumpkin',	'yellow',	6980,	'������',	'yellow_main7.png ',	'yellow_purchase7.png','ȣ���� �帧�� �ٲٴ�. Pumpkin old'	);
insert into product_table values(	8,	'������ī',	'pepper',	'yellow',	3480,	'���Ի�',	'yellow_main8.png',	'yellow_purchase8.png',	'���� ���� ����. Paprika'	);
insert into product_table values(	9,	'������',	'orange',	'yellow',	15900,	'���Ի�',	'yellow_main9.jpg',	'yellow_purchase9.jpg','�ǰ��� �̷�, �̹� �� �� �ȿ�. Orange'		);
insert into product_table values(	10,	'�ٳ���',	'banana',	'yellow',	4980,	'���Ի�',	'yellow_main10.png',	'yellow_purchase10.png',	'�ջ�����.?�δ����. Banana'	);
insert into product_table values(	11,	'���ξ���',	'pineapple',	'yellow',	19900,	'���Ի�',	'yellow_main11.jpg',	'yellow_purchase11.jpg',	'���ο� �Ŀ�. ������� ���ɼ�. Pineapple'	);
insert into product_table values(	12,	'����',	'lemon',	'yellow',	7800,	'���Ի�',	'yellow_main12.png',	'yellow_purchase12.png',	'�����ϴ�.��ä�Ӵ�.���̷Ӵ�. Lemon'		);
insert into product_table values(	13,	'Ű��',	'kiwi',	'green',	27900,	'���Ի�',	'green_main13.jpg',	'green_purchase13.jpg',	'������?�ܹ�����?�ǿ�?���. kiwi will be king'	);
insert into product_table values(	14,	'�ϵ���',	'pea',	'green',	15900,	'������',	'green_main14.png',	'green_purchase14.png',	'��?�Ѿ˷�?���µǴ�?�ϳ���?����. green bean Are you agree?'	);
insert into product_table values(	15,	'����',	'greentea',	'green',	9800,	'������',	'green_main15.jpg',	'green_purchase15.jpg',	'���̴�?����?����?����?����. green color green taste'	);
insert into product_table values(	16,	'����',	'cucumber',	'green',	3480,	'������',	'green_main16.jpg',	'green_purchase16.jpg',	'����, ���� ������ ä��. cucumber sounds cute'	);
insert into product_table values(	17,	'�ñ�ġ',	'spinach',	'green',	2480,	'������',	'green_main17.jpg',	'green_purchase17.jpg','��޽�����,?�丮�ϱ�?����. Spinach'	);
insert into product_table values(	18,	'����ݸ�',	'broccoli',	'green',	17900,	'���Ի�',	'green_main18.jpg',	'green_purchase18.jpg',	'�����?�Բ����?����?���ִ�?����. Broccoli'	);
insert into product_table values(	19,	'����',	'onion',	'white',	3980,	'������',	'white_main19.jpg',	'white_purchase19.jpg',	'���?��������?�߿���?��. onion is only one'	);
insert into product_table values(	20,	'��',	'radish',	'white',	7980,	'������',	'white_main20.jpg',	'white_purchase20.jpg','����?�Բ�����?��������?�����. radish on my dish'	);
insert into product_table values(	21,	'����',	'garlic',	'white',	6980,	'������',	'white_main21.jpg',	'white_purchase21.jpg',	'���ο�?�Ŀ�.?�������?���ɼ�. garlic on flavor.'	);
insert into product_table values(	22,	'��',	'pear',	'white',	34900,	'������',	'white_main22.jpg',	'white_purchase22.jpg',	'��?�ְ�?����?����?���絥?�س´�. pear is pair game'	);
insert into product_table values(	23,	'����',	'ginger',	'white',	18900,	'������',	'white_main23.jpg',	'white_purchase23.jpg','������?����?�̷���?������. ginger moves like zinza'	);
insert into product_table values(	24,	'����',	'mushroom',	'white',	1980,	'������',	'white_main24.jpg',	'white_purchase24.jpg',	'���̳���.?ǳ�̰�?£��.?���̷Ӵ�. mushroom wish your dish'	);
insert into product_table values(	25,	'����',	'grape',	'purple',	19800,	'���Ի�',	'purple_main25.jpg',	'purple_purchase25.jpg','�׻�ȭ?������?�ٲٴ�. The greatest grape'	);
insert into product_table values(	26,	'��纣��',	'blueberries',	'purple',	29900,	'���Ի�',	'purple_main26.jpg',	'purple_purchase26.jpg','�����?���?�Ծ?ȥ������. Blueberry'	);
insert into product_table values(	27,	'���������',	'redcabbage',	'purple',	3980,	'���Ի�',	'purple_main27.jpg',	'purple_purchase27.jpg',	'����?���忡?�ǰ���?�����. Cabbage'	);
insert into product_table values(	28,	'����',	'eggplant',	'purple',	2980,	'������',	'purple_main28.jpg',	'purple_purchase28.jpg'	,'���ο� �İ�, ����� ǳ��. EggPlant');
insert into product_table values(	29,	'����',	'mulberry',	'purple',	25000,	'������',	'purple_main29.jpg',	'purple_purchase29.jpg'	,'�̺���?��޽�����?��������?�������. Mulberry'	);
insert into product_table values(	30,	'���',	'blackrice',	'purple',	7900,	'������',	'purple_main30.jpg',	'purple_purchase30.jpg',	'���� ���� ���� ���ſ�. Coffee'	);

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

--�ۻ��� query��
delete from board_info_table where board_info_idx=7;
select * from board_info_table;



-- ��ٱ��� ���̺�-------------------------------------------------------
drop table cart_table purge;
create table cart_table(
    cart_id number not null primary key,
    user_id varchar2(30) not null,
    product_id number not null,
    amount number default 0
);
-- ��ٱ��� sequence
create sequence cart_seq
start with 1
increment by 1
minvalue 0;


-- ���̺� Ȯ�� �ϱ�
select * from cart_table;
select * from product_table;
select * from user_table;


------- �Խ��� ���̺� -----
drop table board_info_table purge;
create table board_info_table(
	board_info_idx number constraint BOARD_INFO_PK primary key,
	board_info_name varchar2(500) not null
);
update board_info_table set board_info_name='QA' where  board_info_idx=1;
update board_info_table set board_info_name='��ȯ' where  board_info_idx=2;
update board_info_table set board_info_name='ȯ��' where  board_info_idx=3;
update board_info_table set board_info_name='���' where  board_info_idx=4;


-- �Խ��� �� ���̺�----------------------------------------------
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

