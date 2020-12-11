{
	Created by Le Thanh Trung - 11 Ly 1 - 11/12/2020
}
program ktra_4;
var n, i, max, temp :longint;
begin
	readln(n);
	temp:= n;
	max:= 0 ;

	while temp > 0 do begin
		i:= temp mod 10;

		if i > max then max:= i;
		temp:= temp div 10;

	end;

	writeln('Chu so lon nhat cua so ',n,' la ',max);

	readln;
end.