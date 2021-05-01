{
Created by Le Thanh Trung - 11 Ly 1 - 27/11/2020
}
program bai_toan;
uses crt;
var i, sum: integer;
const limit = 1000;
begin
	clrscr;
	repeat
	begin
		i:= i + 1;
		
		
		
		sum:= sum + i;
	end until sum > limit;
	writeln('Ket qua la: ',i);
	writeln('Chuong trinh het roi do :/');
	readln;
end.