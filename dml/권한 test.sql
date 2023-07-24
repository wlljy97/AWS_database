# '자신의 이름(영문)'@ 서버에서만 접속 가능, 비밀번호는 1234
create user jiwoo1@localhost identified by '1234';

# 해당 계정의 비밀번호를 1q2w3e4r로 변경
alter user jiwoo1@localhost identified by '1q2w3e4r';
flush privileges;

# 권한 study2 데이터베이스 -> user_tb(select, insert, update, delete) 
grant select, insert, update, delete on `study2`.`user_tb` to 'jiwoo1'@'localhost';
flush privileges;

show grants for 'jiwoo1'@'localhost';

# update권한 회수
revoke update on `study2`.`user_tb` from 'jiwoo1'@'localhost';
flush privileges;

# 권한 study3 데이터베이스 -> product_tb(select)
grant select on `study3`.`product_tb` to 'jiwoo1'@'localhost';
flush privileges;

show grants for 'jiwoo1'@'localhost';

# delete 권한 추가
grant delete on `study3`.`product_tb` to 'jiwoo1@localhost';
flush privileges;

show grants for 'jiwoo1'@'localhost';

select version();
