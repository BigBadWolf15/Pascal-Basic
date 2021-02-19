{
	Created by Le Thanh Trung - 11 Ly 1 - 19/02/2021
}
program M1chieu5;
var i, j, n, odd, sumOdd, maxEven, sPrime, x, countB, countLe, countChan, count0, countF, countG, countGG, max :LongInt;
TBC :Real;
doiXung, prime, finished: Boolean;
A, B, le, chan, f, g, gg : Array[1..100] of LongInt;
begin
	countChan:= 0;
	countLe:= 0;
	count0:= 0;
	countB:= 0;
	sumOdd:= 0;
	countF:= 0;
	//Cau a
	write('Nhap N = '); readln(n);
	for i:= 1 to n do begin
		write('Nhap phan tu thu ',i,': '); readln(A[i]);
	end;
	writeln;
	for i:= 1 to n do write(A[i],' ');
	writeln;

	//Cau b
	odd:= 0;
	for i:= 1 to n do if A[i] mod 2 = 1 then begin
		odd:= odd + 1;
		sumOdd:= sumOdd + A[i];
	end;
	TBC:= sumOdd / odd;
	writeln('Trung binh cong cua cac so le la: ',TBC:5:2);

	//Cau c
	maxEven:= 0;
	for i:= 1 to n do if (A[i] mod 2 = 0) and (A[i] > maxEven)
	then maxEven:= A[i];

	writeln('So chan lon nhat la: ',maxEven);

	//Cau d
	doiXung:= True; //Ban dau cho day doi xung
	for i:= 1 to n do if A[i] <> A[n - i + 1] then doiXung:= False;
	if doiXung then writeln('Day doi xung!')
	else writeln('Day KHONG doi xung!');

	//Cau e
	sPrime:= 0;
	write('Nhap X= '); readln(x);
	for i:= 1 to n do begin
		prime:= True;
		for j:= 2 to round(sqrt(A[i]) + 1) do
			if A[i] mod j = 0 then prime:= False;

		if prime and (A[i] >= 2) then begin
			countB:= countB + 1;
			B[countB]:= A[i];
		end;
	end;
		for i:= 1 to countB do if ((x - B[i]) < (x - sPrime)) and (B[i] < x) then sPrime:= B[i];

		writeln('So nguyen to lon nhat be hon X la: ',sPrime);
	

	//Cau f
	for i:= 1 to n do
		if A[i] = 0 then count0:= count0 + 1
		else if A[i] mod 2 = 0 then begin
			countChan:= countChan + 1;
			chan[countChan]:= A[i];
		end else begin
			countLe:= countLe + 1;
			le[countLe]:= A[i];
		end;
	

	countF:= countLe + count0 + countChan;
	for i:= 1 to countF do
		if i <= countLe then F[i]:= Le[i]
		else if i <= countLe + count0 then F[i]:= 0
		else F[i]:= Chan[i - countLe - count0];


	for i:= 1 to countF do write(F[i],' ');
	writeln;
	//Cau g
	countG:= 0;
	countGG:= 0;
	for i:= 1 to n do
		if countG = 0 then begin
			countG:= countG + 1;
			countGG:= countGG + 1;
			g[countG]:= A[i];
			gg[countGG]:= 1;
		end else begin
			finished:= False;
			for j:= 1 to countG do
				if A[i] = g[j] then begin
					gg[j]:= gg[j] + 1;
					finished:= True;
				end;	
			if not(finished) then begin
				countG:= countG + 1;
				countGG:= countGG + 1;
				g[countG]:= A[i];
				gg[countGG]:= 1;
			end;
		end;
	max:= 0;
	for i:= 1 to countG do
	if gg[i] > max then max:= gg[i];
	write('(Nhung) so xuat hien nhieu nhat la: ');
	for i:= 1 to countG do if gg[i] = max then write(g[i],' ');
	readln;
end.