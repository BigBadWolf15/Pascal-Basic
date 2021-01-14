var i, n, x, y, u, k, min, max :LongInt;
a, b: Array[1..100] of LongInt;
begin
	writeln('nhap n,x,y');
	readln(n, x, y);
	for i:= 1 to n do readln(a[i]);
	max:= a[1]; min:= a[1]; u:= 0;
	writeln('vi tri co chua x:');
	for i:= 1 to n do begin
		if max < a[i] then max:= a[i];
		if min > a [i] then min:= a[i];
		for k:= 1 to a[i] do if a[i] mod k = 0 then b[i]:= b[i] + 1;
		if a[i] = x then writeln(i);
	end;
	writeln('max:',max,' min:',min);
	writeln('cac so nguyen to:');
	for i:= 1 to n do if b[i] = 2 then begin
		writeln(a[i]);
		u:= u + 1;
	end;
	writeln('So so nguyen to:',u);
	writeln('loai mat so y:');
	i:= 1;
	repeat
		if a[i] = y then begin
			for k:= i to n do a[k]:= a[k + 1];
			n:= n - 1;
		end
		else begin
			writeln(a[i]);
			i:= i + 1;
		end;
	until n = i;
	readln;
end.