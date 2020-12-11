{
	Created by Le Thanh Trung - 11 Ly 1 - 11/12/2020
}
program ktra_3;//Test case: 6, 28, 496, 8128, 33550336
var n, i, sum: longint;
begin
	readln(n);
	sum:= 0;

	for i:= 1 to n - 1 do begin //Khong tinh n
		if n mod i = 0 then begin
			sum:= sum + i;
		end;
		
	end;
	//writeln(sum);//Debug purpose

	if sum = n then writeln('So hoan hao!')
	else writeln('Khong phai so hoan hao!');
	
	readln;
end.