function TongChiaHetCho3(number :LongInt) :LongInt;
	begin
		if number < 3 then TongChiaHetCho3:= 0
		else if number mod 3 = 0 then TongChiaHetCho3:= round((3 + number) * (((number - 3) div 3) + 1) * 0.5)
		else TongChiaHetCho3:= round((3 + number - (number mod 3)) * (((number - 3 - (number mod 3)) div 3) + 1) * 0.5);
	end;

function NguyenTo(number :LongInt) :Boolean;
    var i :LongInt;
    begin
        if number < 2 then NguyenTo:= False
        else if number < 4 then NguyenTo:= True
        else if number mod 2 = 0 then NguyenTo:= False
        else begin
            NguyenTo:= True;
            i:= 3;
            while i <= round(sqrt(number)) + 1 do begin
                if number mod i = 0 then NguyenTo:= False;
                i:= i + 2;
            end;
        end;    
    end;

function HoanHao(number :LongInt) :Boolean;
    var i, tong :LongInt;
    begin
        tong:= 0;
        for i:= 1 to number - 1 do if number mod i = 0 then tong:= tong + i;
        HoanHao:= (number = tong);
    end;

function ChinhPhuong(number :LongInt): Boolean;
	begin
		if number > 0 then ChinhPhuong:= round(sqrt(number)) * round(sqrt(number)) = number
		else ChinhPhuong:= False;
	end;

function reverse(number :LongInt) :Boolean;
    var i, reversed, temp :LongInt;
    begin
        reversed:= 0;
        temp:= number;
        repeat
            i:= temp mod 10;
            reversed:= 10 * reversed + i;
            temp:= temp div 10;
        until temp = 0;
        reverse:= (number = reversed);
    end;

function fibonacci(number :LongInt) :Integer;
	begin
		if number <= 1 then fibonacci:= 1
		else fibonacci:= fibonacci(number - 2) + fibonacci(number - 1);
	end;

function GiaiThua(number :LongInt) :LongInt;
	var i :LongInt;
	begin
		GiaiThua:= 1;
		for i:= 1 to number do GiaiThua:= GiaiThua * i;
	end;

function ChinhHop(k, n :LongInt) :LongInt;
	begin
		if k < n then ChinhHop:= (GiaiThua(n)) div (GiaiThua(k) * GiaiThua(n - k))
		else ChinhHop:= 0;
	end;

procedure VeTamGiac(number :Integer);
	var i, j :LongInt;
	begin
		if number > 0 then for i:=0 to number do begin
			for j:= number downto i do write(' ');
			for j:=0 to i do Write(ChinhHop(j,i),' ');
			writeln;
		end;
	end;

procedure XoaSoNguyenTo(n: Integer; numbers :Array[1..100] of Integer);
	var i: Integer;
	begin
		for i:= 1 to n do if not(NguyenTo(numbers[i])) then write(i,' ');
	end;
	
function MaxChinhPhuong(n: Integer; numbers :Array[1..100] of Integer);
	var i: Integer;
	begin
		for i:= 1 to n do if ChinhPhuong(numbers[i]) and numbers[i] > MaxChinhPhuong then MaxChinhPhuong:= numbers[i];
	end;
	
procedure SapXepCaiGiDo()
	begin
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
	end;
	
procedure XuatHienNhieuNhat()
	begin
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
	end;
	
procedure DayTangGiam(A :array[1..100] of integer);
	begin
	for i:= 1 to n - 1 do begin
		if A[i + 1] - A[i] > 0 then check:= check + 1;
		if A[i + 1] - A[i] < 0 then check:= check - 1;
	end;

	if check = (n - 1) then writeln('Day TANG')
	else if check = (1 - n) then writeln('Day GIAM')
	else writeln('Day khong tang khong giam');

	end;