# like
# 여기서 % 는 ?라고 생각하면된다
# %는 함부러 써서는 안된다.
# _는 중간에 무엇이 오든 상관없다.
# INT 자료형은 찾아지지 않음
# in 과 like는 같이 쓸 수 없음

# NO로 시작하고 PROPERTY로 시작
select
	*
from
	product_tb
where
	-- product_name in('NO.4 TEE', 'PROPERTY OF TEE')
    product_name like 'NO.4%'
    or product_name like 'PROPERTY%'
	;