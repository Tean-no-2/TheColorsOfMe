drop table desktop purge;
create table desktop(
    id varchar2(20) primary key,
    pw varchar2(50) not null,
    name varchar2(10) unique not null
    
);

insert into desktop values('tjoeun','1111');

select * from desktop;

select id,pw from desktop;

drop table tbl_product purge;
create table tbl_product(
    product_idx number not null,
    product_name varchar2(50),
    product_price number default 0,
    product_url varchar2(500)
);
create sequence p_seq
start with 1
increment by 1
minvalue 0;

insert into tbl_product values(P_SEQ.nextval,'스프라이트 니트',30000,'top1.PNG');
insert into tbl_product values(P_SEQ.nextval,'소프트 니트',32000,'top2.PNG');
insert into tbl_product values(P_SEQ.nextval,'브이넥 니트',24000,'top3.PNG');
insert into tbl_product values(P_SEQ.nextval,'울 피치 반폴라',36000,'top4.PNG');

select * from tbl_product;
select product_idx,product_name,product_price,product_url from tbl_product;
commit;