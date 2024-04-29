delimiter $$

create procedure generar_correos()

begin
	declare terminar int default FALSE;
    declare actor_id_val int default 0;
    declare last_name_val varchar(45);
    declare email_final varchar(50);
    
    declare cursor_actores cursor for select actor_id, last_name from actor;
    declare continue handler for not found
    begin
		set terminar = true;    
    end;

	open cursor_actores;
    
    contar_a: loop
    
    fetch cursor_actores into actor_id_val, last_name_val;
		if terminar then
			leave contar_a;
		end if;
        
	set email_final = concat('e', actor_id_val, '.', last_name_val, '@correo.com');
    
    update actor set email = email_final
    where actor_id = actor_id_val;
    
    end loop;
    
end $$

delimiter ;