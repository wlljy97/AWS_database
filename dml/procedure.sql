# procedure(저장 프로시저)
# call을 사용해서 호출

call save_user('ddd@gmail.com', '1111', '김준이', 'google', null);
call save_user_many('aaa', '1234', '김준일', null, null, 5);

set @color = 'black';
set @color_name = 'blue';

call get_product_total_count(@color, @total_count, @color_name);
select @color, @total_count, @color_name;

call get_product_by_category(''); # if문 범위를 줄 경우
call get_product_by_category_case('tees'); # case문 바로 찾아가는 경우

show global variables like 'log_bin_trust_function_creators'; # 상태를 보는 것

SET GLOBAL log_bin_trust_function_creators = 1; # 바꾸는 것 이것을 해줘야 functions을 할 수 있음

select create_name_and_age('김준일', 30);  # select 안에서 호출


