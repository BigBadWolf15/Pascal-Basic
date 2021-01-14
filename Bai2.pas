{
	Created by Le Thanh Trung - 14/01/2021
}
program bai2;
uses crt;
var N, i, index, j, x: Integer;
A:Array[1..100] of Integer;
Incrementing :Boolean;
begin
	clrscr;
	write('Nhap N= '); readln(N);
	//Cau a
	for i:= 1 to N do begin
		repeat begin
			write('Nhap phan tu thu ',i,' = '); readln(A[i]);
		end until (A[i] >= 0);
	end;

	//Cau b
	writeln;
	write('Day vua nhap la: ');
	for i:= 1 to N do begin
		write(A[i],' ')
	end;
	writeln;

	//Cau c
	Incrementing:= True;
	for i:= 1 to N - 1 do begin
		if A[i] > A[i + 1] then Incrementing:= False;
	end;
	if (A[1] <> A[N]) and Incrementing then writeln('Day tang dan!')
	else writeln('Day khong tang dan!');

	//Cau d, d chi chay neu cau c fail
	//implemented using Insertion Sort with complexity O(n^2)
	if not(Incrementing) then begin
		writeln('Sorting...');
		for i:= 2 to N do begin
			index:= A[i];
			j:= i;
			while ((j > 1) and (A[j - 1] > index)) do begin
				A[j]:= A[j - 1];
				j:= j - 1;
			end;
			A[j]:= index;
		end;
	end;

	writeln;
	for i:= 1 to N do begin
		write(A[i],' ')
	end;
	writeln;

	//Cau e, su dung Bubble Sort de giai quyet
	write('Nhap X: '); readln(x);
	N:= N + 1;
	A[N]:= x;
	for i:= N downto 2 do begin
		if A[i] < A[i - 1] then begin
			A[i]:= A[i] + A[i - 1];
			A[i - 1]:= A[i] - A[i - 1];
			A[i]:= A[i] - A[i - 1];
		end;	
	end;

	for i:= 1 to N do begin
		write(A[i],' ')
	end;

	readln;
end.