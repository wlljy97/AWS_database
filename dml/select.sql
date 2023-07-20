insert into student_tb 
values
	(0, '김준일', 20, 0), 
	(0, '김준이', 21, 0), 
	(0, '김준삼', 20, null), 
	(0, '김준사', 22, null), 
	(0, '김준오', 21, 0);
    

    
select * from student_tb;
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
	student_score = 30
where
	student_age = 22;
    
# 나이가 20살인 학생들의 점수를 전부 더하세요.
select 
	student_age,
	sum(student_score) as total_score # 변수명이랑 맞춰야함
from
	student_tb
-- where 
-- 	student_age = 20
group by #from 다음 group by 후 selcet로 돌아갔다가 having으로 간다 
	student_age
having # having은 group by후 select에서 as total_score를 해서 사용 가능해짐
	total_score = 40; 
    
select
	count(*) # count() ()안의 갯수를 나타냄 
from
	student_tb
where
	student_age = 20;
    
select
	*
from
	student_tb
order by 	#제일 마지막에 이루어진다
	student_score desc,    # 오름차순은 asc (생략가능), desc 내림차순
    student_id desc;
    