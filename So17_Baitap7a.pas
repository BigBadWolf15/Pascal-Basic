{
	Created by Le Thanh Trung - 11 Ly 1 - 04/12/2020
}
program bay_a;
uses crt;
var i, j, n: longint;
prime : boolean;
begin
	clrscr;
	write('Nhap vao so nguyen N: '); readln(n);
	write('Cac so nguyen to be hon ',n,' la: ');
	
	for i:= 2 to n do begin
		prime:= True;
		
		for j:= 2 to round(sqrt(i)) do begin 
			if i mod j = 0 then prime:= False;
		end;

		if prime then write(i,' ');
	end;

	readln;
end.
