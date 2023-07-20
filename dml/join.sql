insert into product_tb
values
	(0, '상의1', 10000),
	(0, '상의2', 20000),
	(0, '상의3', 30000);
    
select * from product_tb;

insert into product_color_tb
values
	(0, 'black'),
	(0, 'white'),
	(0, 'red'),
	(0, 'blue'),
	(0, 'green');
    
select * from product_color_tb;

insert into registered_product_tb
values
	(0, 1, 1),
	(0, 1, 2),
	(0, 1, 3),
	(0, 1, 4),
	(0, 1, 5),
	(0, 2, 1),
	(0, 2, 3),
	(0, 3, 2),
	(0, 3, 4);
    
select
	*,
    (select color_name from product_color_tb as pct where pct.product_color_id = rpt.product_color_id) as color_name
from
	registered_product_tb as rpt
where
	product_color_id = (select
							product_color_id
						from
							product_color_tb
						where
							color_name = 'black');

select
	*
from
	registered_product_tb rpt
    left outer join product_color_tb pct on(pct.product_color_id = rpt.product_color_id)
    # left outer join : 두개의 테이블을 합치겠다. , 여기서 on은 where과 같은 조건문이다. 이 조건이 참인경우 붙힘
    # 두개가 같은 경우에만 붙히겠다. 프라이머리키 로만 join을 한다.
    # on 앞에 기준으로 기준을 잡는다.
    
where
	pct.color_name = 'red';
    
    

