program aswe;
uses crt;
var N, max, min, NP, NO, NS, x, y, i, j: LongInt;
MangNhap, MangNguyenTo, MangLap, MangXoa :Array[1..100] of LongInt;
Prime :Boolean;
begin
	clrscr;
	write('...'); readln(N);
	for i:= 1 to N do begin
			write('...'); readln(MangNhap[i])
	end;
	write('...');
	for i:= 1 to N do begin
		write(MangNhap[i],' ');
	end;
	min:= 10000000;
	max:= 0;
	for i:= 1 to N do begin
		if MangNhap[i] > max then max:= MangNhap[i];
		if MangNhap[i] < min then min:= MangNhap[i];
	end;
	writeln('...',max);
	writeln('...',min);
	NP:= 0;
	for i:= 1 to N do begin
		prime:= True;
		for j:= 2 to round(sqrt(MangNhap[i])) do begin
			if MangNhap[i] mod j = 0 then begin
				Prime:= False;
				break;
			end;
		end;
		if Prime and (MangNhap[i] >= 2) then begin
			NP:= NP + 1;
			MangNguyenTo[NP]:= MangNhap[i];
		end;
	end;
	writeln('...',NP);
	write('...');
	for i:= 1 to NP do write(MangNguyenTo[i],' ');
	writeln;
	writeln;
	NO:= 0;
	write('...'); readln(x);
	for i:= 1 to N do begin
		if MangNhap[i] = x then begin
			NO:= NO + 1;
			MangLap[NO]:= i;
		end;
	end;
	writeln('...');
	for i:= 1 to NO do write(MangLap[i],' ');
	writeln;
	writeln;
	NS:= 0;
	write('...'); readln(y);
	for i:= 1 to N do begin
		if MangNhap[i] <> y then begin
			NS:= NS + 1;
			MangXoa[NS]:= MangNhap[i];
		end;
	end;
	for i:= 1 to NS do write(MangXoa[i],' ');
	readln;
end.