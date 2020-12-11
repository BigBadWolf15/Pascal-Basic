{
	Created by Le Thanh Trung - 11 Ly 1 - 04/12/2020
}
program sau_b;
uses crt;
var i, n : longint;
prime: boolean;
begin
	clrscr;
	prime:= True;
	write('Nhap vao mot so nguyen: '); readln(n);

	i:= 2;
	while i <= round(sqrt(n)) do begin
		if n mod i = 0 then prime:= False;
		i:= i + 1;
	end;

	if prime and (i > 1) then writeln(N,' la so nguyen to')
	else writeln(N,' ko la so nguyen to');

	readln;
end.