{
	Created by Le Thanh Trung - 11 Ly 1 - 04/12/2020
}
program bay_b;
uses crt;
var i, j, n: longint;
prime : boolean;
begin
	clrscr;
	write('Nhap vao so nguyen N: '); readln(n);
	write('Cac so nguyen to be hon ',n,' la: ');
	
	i:= 2;
	while i <= n do begin
		prime:= True;
		j:= 2;

		while j <= round(sqrt(i)) do begin 
			if i mod j = 0 then prime:= False;
			j:= j + 1;
		end;

		if prime then write(i,' ');
		i:= i + 1;
	end;

	readln;
end.
