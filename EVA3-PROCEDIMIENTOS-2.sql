delimiter $$ 

create procedure contar_actor(out cant int)

begin
	select count(*) into cant from actor;
    
end $$

delimiter ;