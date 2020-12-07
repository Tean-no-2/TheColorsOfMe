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
 insert into product_table values(	1,	'토마토',	'tomato',	'red',	13500,	'국내산',	'red_main1.jpg',	'red_purchase1.jpg',	'red_detail1.jpg'	);
insert into product_table values(	2,	'딸기',	'Strawberry',	'red',	41500,	'국내산',	'red_main2.png',	'red_purchase2.png',	'red_detail2.png'	);
insert into product_table values(	3,	'수박',	'watermelon',	'red',	19900,	'국내산',	'red_main3.png',	'red_purchase3.png',	'red_detail3.png'	);
insert into product_table values(	4,	'사과',	'apple',	'red',	18900,	'국내산',	'red_main4.jpg',	'red_purchase4.jpg',	'red_detail4.jpg'	);
insert into product_table values(	5,	'석류',	'pomegranate',	'red',	25900,	'수입산',	'red_main5.jpg',	'red_purchase5.jpg',	'red_detail5.jpg'	);
insert into product_table values(	6,	'고추',	'redpepper',	'red',	1980,	'국내산',	'red_main6.jpg',	'red_purchase6.jpg',	'red_detail6.jpg'	);
insert into product_table values(	7,	'호박',	'pumpkin',	'yellow',	6980,	'국내산',	'yellow_main7.png ',	'yellow_purchase7.jpg',	'yellow_detail7.jpg'	);
insert into product_table values(	8,	'파프리카',	'pepper',	'yellow',	3480,	'수입산',	'yellow_main8.png',	'yellow_purchase8.png',	'yellow_detail8.png'	);
insert into product_table values(	9,	'오렌지',	'orange',	'yellow',	15900,	'수입산',	'yellow_main9.jpg',	'yellow_purchase9.jpg',	'yellow_detail9.jpg'	);
insert into product_table values(	10,	'바나나',	'banana',	'yellow',	4980,	'수입산',	'yellow_main10.png',	'yellow_purchase10.png',	'yellow_detail10.png'	);
insert into product_table values(	11,	'파인애플',	'pineapple',	'yellow',	19900,	'수입산',	'yellow_main11.jpg',	'yellow_purchase11.jpg',	'yellow_detail11.jpg'	);
insert into product_table values(	12,	'레몬',	'lemon',	'yellow',	7800,	'수입산',	'yellow_main12.png',	'yellow_purchase12.png',	'yellow_detail12.png'	);
insert into product_table values(	13,	'키위',	'kiwi',	'green',	27900,	'수입산',	'green_main13.jpg',	'green_purchase13.jpg',	'green_detail13.jpg'	);
insert into product_table values(	14,	'완두콩',	'pea',	'green',	15900,	'국내산',	'green_main14.png',	'green_purchase14.png',	'green_detail14.png'	);
insert into product_table values(	15,	'녹차',	'greentea',	'green',	9800,	'국내산',	'green_main15.jpg',	'green_purchase15.jpg',	'green_detail15.jpg'	);
insert into product_table values(	16,	'오이',	'cucumber',	'green',	3480,	'국내산',	'green_main16.jpg',	'green_purchase16.jpg',	'green_detail16.jpg'	);
insert into product_table values(	17,	'시금치',	'spinach',	'green',	2480,	'국내산',	'green_main17.jpg',	'green_purchase17.jpg',	'green_detail17.jpg'	);
insert into product_table values(	18,	'브로콜리',	'broccoli',	'green',	17900,	'수입산',	'green_main18.jpg',	'green_purchase18.jpg',	'green_detail18.jpg'	);
insert into product_table values(	19,	'양파',	'onion',	'white',	3980,	'국내산',	'white_main19.jpg',	'white_purchase19.jpg',	'white_detail19.jpg'	);
insert into product_table values(	20,	'무',	'radish',	'white',	7980,	'국내산',	'white_main20.jpg',	'white_purchase20.jpg',	'white_detail20.jpg'	);
insert into product_table values(	21,	'마늘',	'garlic',	'white',	6980,	'국내산',	'white_main21.jpg',	'white_purchase21.jpg',	'white_detail21.jpg'	);
insert into product_table values(	22,	'배',	'pear',	'white',	34900,	'국내산',	'white_main22.jpg',	'white_purchase22.jpg',	'white_detail22.jpg'	);
insert into product_table values(	23,	'생강',	'ginger',	'white',	18900,	'국내산',	'white_main23.jpg',	'white_purchase23.jpg',	'white_detail23.jpg'	);
insert into product_table values(	24,	'버섯',	'mushroom',	'white',	1980,	'국내산',	'white_main24.jpg',	'white_purchase24.jpg',	'white_detail24.jpg'	);
insert into product_table values(	25,	'포도',	'grape',	'purple',	19800,	'수입산',	'purple_main25.jpg',	'purple_purchase25.jpg',	'purple_detail25.jpg'	);
insert into product_table values(	26,	'블루베리',	'blueberries',	'purple',	29900,	'수입산',	'purple_main26.jpg',	'purple_purchase26.jpg',	'purple_detail26.jpg'	);
insert into product_table values(	27,	'적색양배추',	'redcabbage',	'purple',	3980,	'수입산',	'purple_main27.jpg',	'purple_purchase27.jpg',	'purple_detail27.jpg'	);
insert into product_table values(	28,	'가지',	'eggplant',	'purple',	2980,	'국내산',	'purple_main28.jpg',	'purple_purchase28.jpg'	,'purple_detail28.jpg'	);
insert into product_table values(	29,	'오디',	'mulberry',	'purple',	25000,	'국내산',	'purple_main29.jpg',	'purple_purchase29.jpg'	,'purple_detail29.jpg'	);
insert into product_table values(	30,	'흑미',	'blackrice',	'purple',	7900,	'국내산',	'purple_main30.jpg',	'purple_purchase30.jpg',	'purple_detail30.jpg'	);

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

