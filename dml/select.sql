insert into student_tb
values
	(0, '김준일', 20, 0),
	(0, '김준이', 21, 0),
	(0, '김준삼', 20, null),
	(0, '김준사', 22, null),
	(0, '김준오', 21, 0);
    
#이렇게 적는습관을 길러야함 한줄 안됨 (수습하기 그나마 수월..)
select 
	student_id,
    student_name,
    student_age,
    student_score
from
	student_tb
where
	(student_age = 20
    or student_score is not null)
    and student_name = '김준일';
    
update student_tb
set
	student_score = 10
where
	student_age = 20;
    
# 나이가 20살인 학생들의 점수를 전부 더하세요
select 
	student_age,
    sum(student_score) as total_score	#java변수명이랑 db컬럼명이 동일해야함
from
    student_tb
-- where
-- 	student_age = 20
group by
	student_age
having
	total_score = 40;
    