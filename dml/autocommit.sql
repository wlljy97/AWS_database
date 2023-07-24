select @@autocommit;
set autocommit = 0; # commit off , off가 되있는 상태면 바로바로 실행이 안된다.

start transaction; 
# transaction이 시작된다.

savepoint insert_user; # 돌아갈 위치를 정함

insert into user_tb
values(0, 'ddd', '1234');

-- select * from user_tb;

savepoint update_user_password;

update user_tb set password = '1111' where username = 'ddd';

-- select * from user_tb;

rollback to savepoint update_user_password; # 해당 시점으로 돌린다.

rollback to savepoint insert_user; # 해당 시점으로 돌린다.
    
rollback; 
# start transaction 위로 올라간다 commit하기 전에는 돌려버린다.
# commit을 하면 돌아가지 못한다.!!

commit; # commit 일어나지 않으면 저장되지 않는다.

    
