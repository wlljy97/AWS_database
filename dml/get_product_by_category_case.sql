CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_by_category_case`(
	in vs_category_name varchar(50)
)
BEGIN
	case vs_category_name
		when 'tees' then
			select '티셔츠';
		when 'outer' then
			select '외투';
		else
			select '옷';
	end case;
END