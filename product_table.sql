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
    product_info varchar2(50)
    );
 insert into product_table values(	1,	'�丶��',	'tomato',	'red',	13500,	'������',	'red_main1.jpg',	'red_purchase1.jpg',	'red_detail1.jpg'	);
insert into product_table values(	2,	'����',	'Strawberry',	'red',	41500,	'������',	'red_main2.png',	'red_purchase2.png',	'red_detail2.png'	);
insert into product_table values(	3,	'����',	'watermelon',	'red',	19900,	'������',	'red_main3.png',	'red_purchase3.png',	'red_detail3.png'	);
insert into product_table values(	4,	'���',	'apple',	'red',	18900,	'������',	'red_main4.jpg',	'red_purchase4.jpg',	'red_detail4.jpg'	);
insert into product_table values(	5,	'����',	'pomegranate',	'red',	25900,	'���Ի�',	'red_main5.jpg',	'red_purchase5.jpg',	'red_detail5.jpg'	);
insert into product_table values(	6,	'����',	'redpepper',	'red',	1980,	'������',	'red_main6.jpg',	'red_purchase6.jpg',	'red_detail6.jpg'	);
insert into product_table values(	7,	'ȣ��',	'pumpkin',	'yellow',	6980,	'������',	'yellow_main7.png ',	'yellow_purchase7.jpg',	'yellow_detail7.jpg'	);
insert into product_table values(	8,	'������ī',	'pepper',	'yellow',	3480,	'���Ի�',	'yellow_main8.png',	'yellow_purchase8.png',	'yellow_detail8.png'	);
insert into product_table values(	9,	'������',	'orange',	'yellow',	15900,	'���Ի�',	'yellow_main9.jpg',	'yellow_purchase9.jpg',	'yellow_detail9.jpg'	);
insert into product_table values(	10,	'�ٳ���',	'banana',	'yellow',	4980,	'���Ի�',	'yellow_main10.png',	'yellow_purchase10.png',	'yellow_detail10.png'	);
insert into product_table values(	11,	'���ξ���',	'pineapple',	'yellow',	19900,	'���Ի�',	'yellow_main11.jpg',	'yellow_purchase11.jpg',	'yellow_detail11.jpg'	);
insert into product_table values(	12,	'����',	'lemon',	'yellow',	7800,	'���Ի�',	'yellow_main12.png',	'yellow_purchase12.png',	'yellow_detail12.png'	);
insert into product_table values(	13,	'Ű��',	'kiwi',	'green',	27900,	'���Ի�',	'green_main13.jpg',	'green_purchase13.jpg',	'green_detail13.jpg'	);
insert into product_table values(	14,	'�ϵ���',	'pea',	'green',	15900,	'������',	'green_main14.png',	'green_purchase14.png',	'green_detail14.png'	);
insert into product_table values(	15,	'����',	'greentea',	'green',	9800,	'������',	'green_main15.jpg',	'green_purchase15.jpg',	'green_detail15.jpg'	);
insert into product_table values(	16,	'����',	'cucumber',	'green',	3480,	'������',	'green_main16.jpg',	'green_purchase16.jpg',	'green_detail16.jpg'	);
insert into product_table values(	17,	'�ñ�ġ',	'spinach',	'green',	2480,	'������',	'green_main17.jpg',	'green_purchase17.jpg',	'green_detail17.jpg'	);
insert into product_table values(	18,	'����ݸ�',	'broccoli',	'green',	17900,	'���Ի�',	'green_main18.jpg',	'green_purchase18.jpg',	'green_detail18.jpg'	);
insert into product_table values(	19,	'����',	'onion',	'white',	3980,	'������',	'white_main19.jpg',	'white_purchase19.jpg',	'white_detail19.jpg'	);
insert into product_table values(	20,	'��',	'radish',	'white',	7980,	'������',	'white_main20.jpg',	'white_purchase20.jpg',	'white_detail20.jpg'	);
insert into product_table values(	21,	'����',	'garlic',	'white',	6980,	'������',	'white_main21.jpg',	'white_purchase21.jpg',	'white_detail21.jpg'	);
insert into product_table values(	22,	'��',	'pear',	'white',	34900,	'������',	'white_main22.jpg',	'white_purchase22.jpg',	'white_detail22.jpg'	);
insert into product_table values(	23,	'����',	'ginger',	'white',	18900,	'������',	'white_main23.jpg',	'white_purchase23.jpg',	'white_detail23.jpg'	);
insert into product_table values(	24,	'����',	'mushroom',	'white',	1980,	'������',	'white_main24.jpg',	'white_purchase24.jpg',	'white_detail24.jpg'	);
insert into product_table values(	25,	'����',	'grape',	'purple',	19800,	'���Ի�',	'purple_main25.jpg',	'purple_purchase25.jpg',	'purple_detail25.jpg'	);
insert into product_table values(	26,	'��纣��',	'blueberries',	'purple',	29900,	'���Ի�',	'purple_main26.jpg',	'purple_purchase26.jpg',	'purple_detail26.jpg'	);
insert into product_table values(	27,	'���������',	'redcabbage',	'purple',	3980,	'���Ի�',	'purple_main27.jpg',	'purple_purchase27.jpg',	'purple_detail27.jpg'	);
insert into product_table values(	28,	'����',	'eggplant',	'purple',	2980,	'������',	'purple_main28.jpg',	'purple_purchase28.jpg'	,'purple_detail28.jpg'	);
insert into product_table values(	29,	'����',	'mulberry',	'purple',	25000,	'������',	'purple_main29.jpg',	'purple_purchase29.jpg'	,'purple_detail29.jpg'	);
insert into product_table values(	30,	'���',	'blackrice',	'purple',	7900,	'������',	'purple_main30.jpg',	'purple_purchase30.jpg',	'purple_detail30.jpg'	);

commit;


UPDATE product_table SET product_purchase_img='yellow_purchase7.png' where product_id=7;

select * from product_table;

drop table productImg_table purge;
create table productImg_table(
    product_id number,
    main_img varchar2(300)
);
insert into productImg_table values(7,'yellow_purchase7_1.png');
insert into productImg_table values(7,'yellow_purchase7_2.png');
insert into productImg_table values(7,'yellow_purchase7_3.png');
insert into productImg_table values(7,'yellow_purchase7_4.png');

DELETE FROM productImg_table WHERE main_img = 'fruit07-4.png';
select * from productImg_table; 

commit;
select main_img
from productImg_table 
where product_id = 7;

