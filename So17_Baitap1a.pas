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

	for i:= 1 to N - 1 do
	begin
		s:=s + 1/(i * (i+1));
	end;
	writeln('Tong S la: ',S:8:3);
	readln;
end.