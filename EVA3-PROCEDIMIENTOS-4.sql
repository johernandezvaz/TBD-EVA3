delimiter $$

create procedure  agregar_actor(in nombre varchar(45), in apellidos varchar(45))

begin

	declare ultimo_id int;
    
    select max(actor_id) into ultimo_id from actor;
	set ultimo_id 	= ultimo_id + 1;
    
    insert into actor(actor_id, first_name, last_name)
    values (ultimo_id, nombre, apellidos);

end $$ 
delimiter ;