program gigidotaucungkobik;
uses crt;
var N, i, index, j: Integer;
A:Array[1..100] of Integer;
Incrementing :Boolean;
begin
	clrscr;
	write('Nhap N= '); readln(N);
	//Cau a
	for i:= 1 to N do begin
		write('Nhap phan tu thu ',i,' = '); readln(A[i]);
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

	//Cau d, d chi chay neu , implemented using Insertion Sort with complexity O(n^2)
	if not(Incrementing) then begin
	writeln('Sorting');
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

	

end.