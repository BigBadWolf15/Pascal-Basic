{
Created by Le Thanh Trung - 11 Ly 1 - 27/11/2020
}
program bai_toan;
uses crt;
var i, N, x, P, s: LongInt;

begin
	clrscr;
	write('Nhap x: '); readln(x);
	write('Nhap n: '); readln(n);

	p:= 1;
	for i:= 0 to n do
	begin
		s:= s + p;
		p:= p * x;
	end;
	writeln('Ket qua la: ',s);
	readln;
end.