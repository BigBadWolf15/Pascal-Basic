{
	Created by Le Thanh Trung - 11 Ly 1 - 11/12/2020
}
program ktra_1;//Test case: 6 -> hoan chinh, else -> khong hoan chinh
var n, i, sum, product: longint;
begin
	readln(n);
	product:= 1;
	sum:= 0;

	for i:= 1 to n - 1 do begin //Khong tinh n
		if n mod i = 0 then begin
			product:= product * i;
			sum:= sum + i;
		end;

	end;
	//writeln(sum, product);//Debug purpose

	if sum = product then writeln('So hoan chinh!')
	else writeln('Khong phai so hoan chinh!');
	
	readln;
end.