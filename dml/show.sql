insert into product_tb
values
	(20230701, '상품1'),
	(20230702, '상품2'),
	(20230703, '상품3'),
	(20230704, '상품4'),
	(20230705, '상품5');

create view product_view as
select * from product_tb;

create index product_code_index on product_tb(product_code);
# product_code_index 는 key_name이 됨 , product_code를 index 형식으로

show index from user_tb;
# index를 확인하는 방법은 show index

show full tables in study3 where table_type like 'VIEW';
# show full tables in 만들어진 view 만 조회할 때 쓴다. , like 부분에는 '=' 을 써도 된다.

show full tables in study3;
# table 정보들이 나옴

show tables;
# 모든 table을 조회

# key값이 있으면 빠른 조회가 가능
# 테이블 컬럼이 있다. index값으로 잡아야한다.

