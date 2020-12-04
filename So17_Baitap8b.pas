{
	Created by Le Thanh Trung - 11 Ly 1 - 04/12/2020
}
program tam_a;
uses crt;
var a, b, n, i : longint;
flip: boolean;
begin
	clrscr;
	write('Nhap N: '); readln(n);

	a:= 1;
	write(a,' ');
	if n < 2 then exit;

	b:= 1;
	write(b,' ');
	if n < 3 then exit;

	i:= 3;
	while i <= n do begin
		if flip then begin
			a:= a + b;
			write(a,' ');

		end else begin
			b:= a + b;
			write(b,' ');
		end;

		flip:= not(flip);
		i:= i + 1;
	end;

	readln;
end.