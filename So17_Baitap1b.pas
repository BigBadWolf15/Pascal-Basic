{
Created by Le Thanh Trung - 11 Ly 1 - 27/11/2020
}
program bai_toan;
uses crt;
var i, N: Integer;
S: Real;
begin
	clrscr;
	write('Nhap gia tri cua N= '); readln(N);
	s:= 1;

	repeat
	begin
		i:= i + 1;
		s:= s + 1/(i*( i + 1));
	end until i = N - 1;
	writeln('Tong S la: ',S:8:3);
	readln;
end.