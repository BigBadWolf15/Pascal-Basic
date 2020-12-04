{
	Created by Le Thanh Trung - 11 Ly 1 - 04/12/2020
}
program nam_a;
uses crt;
var m, n, r, ucln, bcnn: longint;
begin
	write('Nhap M= '); readln(m);
	write('Nhap N= '); readln(n);

	if (m = 0) or (n = 0) then exit;
	bcnn:= m*n;

	for r:= 1 to abs(m - n) do begin
		if (m mod r = 0) and (n mod r = 0) then ucln:= r;
	end;

	bcnn:= bcnn div ucln; //Da thuc hien nhan m x n o tren.
	writeln('Uoc chung lon nhat la: ',ucln);
	writeln('Boi chung nho nhat la: ',bcnn);
	
	readln;
end.