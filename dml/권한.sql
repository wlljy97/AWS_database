# 사용자 추가
create user test1@192.168.0.1 identified by '1234'; # identified by 패스워드
# 계정생성
# @ 다음 부분에 localhost (자신의 서버를 표시) 대신에 호스트 IP 주소를 적을 수 있음 보안상 막음
# localhost 자신의 컴퓨터에서만 볼 수 있다는 것
# %를 주면 모든,어디서든지 접근이 가능함

use mysql;
select host, user from user;

# 사용자 권한 dcl
revoke all on study3.* from test1@localhost;
# revoke 는 회수(삭제) 하겠다 라는 의미 

grant all privileges on study3.user_tb to test1@localhost; 
# table도 설정을 해서 권한을 줄 수 있다.

# all privileges 모든(전체) 권한을 다주겠다.

create user 'test2'@'%' identified by '1234';
# @앞 뒤로 ''로 끊어 줘야 한다.

use mysql; # use 를 사용하면 데이터베이스 선택
select host, user from user;

# 데이터 베이스를 선택한 후 변경 가능
alter user 'test2'@'%' identified by '1111'; # 비밀번호 변경
flush privileges; # 변경 후 저장 

alter user 'test1'@'localhost' identified by '1111'; # 비밀번호 변경
flush privileges; # 변경 후 저장 

grant select , insert on `study3`.`user_tb` to 'test2'@'%';  # grant 명려이 실행이 되면 권한을 주겠다.
flush privileges;
# 권한을 주고 나면 저장
# db 와 table은 `(백쿼터) , 사용 권한을 줄 것에는 '' 표시

revoke insert on `study3`.`user_tb` from 'test2'@'%';

show grants for 'test2'@'%';




