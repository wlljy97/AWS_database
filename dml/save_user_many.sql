CREATE DEFINER=`root`@`localhost` PROCEDURE `save_user_many`(
	in VS_email varchar(50),
    in VS_password varchar(50),
    in VS_name varchar(50),
    in VS_provider varchar(50),
    in VS_profile_img varchar(200),
    in VN_count int
)
BEGIN
	declare i int;
    declare VN_ai int;
    set i = 0;
    
    while i < VN_count do # do라고 열고 끝에는 end while 로 끝냄
		select
			 auto_increment into VN_ai
		from
			information_schema.tables
		where
			table_name = 'user_tb'
		limit 1;
            
		insert into user_tb
        values(
			0, 
			concat(VS_email, i + 1, '@gamil.com'), 
			VS_password, 
			concat(VS_name, last_insert_id() + 1), 
			null, 
			null
		);
		set i = i + 1;
	end while;
    
    select
		*
	from
		user_tb;
END