program M1chieu4;
var i, j, k, n, countB :LongInt;
A, B: array[1..100] of LongInt;
prime: Boolean;
begin
	countB:= 0;
	//Cau a
	write('Nhap N = '); readln(n);
	for i := 1 to n do begin
		write('Nhap phan tu thu ',i,' '); readln(A[i]);
	end;

	//Cau b
	writeln;
	for i:= 1 to n do write(A[i], ' ');
	writeln;

	//Cau c
	writeln;
	for i:= 1 to n do begin
		prime:= True;
		for j:= 2 to round(sqrt(A[i]) + 1) do begin
			if A[i] mod j = 0 then prime:= False;
		end;
			if not(prime) then begin
				countB:= countB + 1;
				B[countB]:= A[i];
			end;
	end;

	for i:= 1 to countB do write(B[i], ' ');
	writeln;

	//Cau d
	writeln;
	for i:= 1 to n do
	for j:= 1 to n do
	for k:= j to n do if (B[j] < B[k]) 
	and (B[j] mod 2 = 0) and (B[k] mod 2 = 0) then begin
		B[j]:= B[j] + B[k];
		B[k]:= B[j] - B[k];
		B[j]:= B[j] - B[k];
	end;

	for i:= 1 to countB do write(B[i],' ');
	writeln;

	//Cau e
	writeln;
	for i:= 1 to n do begin
		prime:= True;
		for j:= 2 to round(sqrt(A[i]) + 1) do begin
			if A[i] mod j = 0 then prime:= False;
		end;
			if prime and (A[i] >= 2) then A[i]:= 0;
	end;
	for i:= 1 to n do if A[i] <> 0 then write(A[i],' ');
	readln;
end.