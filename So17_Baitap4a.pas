{
Created by Le Thanh Trung - 11 Ly 1 - 27/11/2020
}
program bai_toan;
uses crt;
var i, sum: integer;
const limit = 1000;
begin
	clrscr;
	for i:= 1 to 1000 do
	begin
		sum:= sum + i;
		if sum > limit then break;
	end;
	writeln('Ket qua la: ',i);
	writeln('Chuong trinh het roi do :/');
	readln;
end.