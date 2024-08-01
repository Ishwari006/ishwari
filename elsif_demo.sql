create or replace function elsif_demo() returns void as $$
declare
	x integer = 72;
	y integer = 72;
begin
	if x > y then
		raise notice '% is greater than %',x,y;
	elsif x < y then
		raise notice '% is less than %',x,y;
	else 
		raise notice '% is equal to %',x,y;
	end if;
end;
$$ language plpgsql;
