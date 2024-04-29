delimiter $$ 

create procedure contar_apellido(out cant int, in apellido varchar(45))

begin
	select count(*) into cant from actor where last_name = apellido;
    
end $$

delimiter ;