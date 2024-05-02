delimiter $$

create function generar_actorid()
returns int reads sql data
begin
    declare resu int;
    declare actorid int;
    declare continue handler for not found
		set actorid = 0;
		select coalesce(max(actor_id), 0) from actor into actorid;
    set resu = actorid + 1;
    return resu;
end $$ 
delimiter ;
