delimiter ??

create function factorial(num int)
returns int deterministic
begin
	declare resu int;
    declare cont int;
    set cont = 1;
	set resu = 1;

	mult: loop
		if cont <= num then
            set resu = resu * cont;
			set cont = cont + 1;
		else		
			leave mult;  
		end if;
        
        
    end loop mult;
    
    return resu;

end??

delimiter ;