program m2chieu;
var i, j, n, x, count, tongPhu, k, dem, tongTGP, max, countg, maxi, ll, countB, index: Integer;
A: Array[1..100, 1..100] of Integer;
G, GG, B : Array[1..100] of Integer;
Prime, Increasing, Finished: Boolean;
begin
    write('Nhap N= '); readln(n);
    for i:= 1 to n do
        for j:= 1 to n do begin
            write('Nhap A[',i,',',j,']= '); readln(A[i,j]);
        end;
    writeln;
    //Cau 1
    for i:= 1 to n do begin
        for j:= 1 to n do write(A[i, j],'   ');
        writeln;
        end;
    writeln;

    //Cau 2
    write('Nhap X= '); readln(x);
    for i:= 1 to n do
        for j:= 1 to n do 
        if A[i, j] = x then count:= count + 1;
    writeln('So lan X xuat hien la: ',count);

    //Cau 3
    for i:= 1 to n do begin
      j:= n - i + 1;
      tongPhu:= tongPhu + A[i,j];
    end;
    writeln('Tong duong cheo phu la: ',tongPhu);

    //Cau 4
    writeln;
    writeln('Nhung so khong nguyen to: ');
    for i:= 1 to n do
        for j:= 1 to n do begin
            prime:= True;
            for k:= 2 to (round(sqrt(A[i,j]) + 1) + 1) do
                if (A[i, j] mod k = 0) and (A[i,j] <> k) then prime:= False;
            if not(prime) then begin
                write(A[i,j],' ');
                dem:= dem + 1;
            end;
        end;
    writeln('Co tat ca ',dem,' so khong nguyen to.');

    //Cau 5
    Increasing:= True;
    for i:= 2 to n do begin
        if A[i, i] < A[i - 1, i - 1] then Increasing:= False;
    end;
    if Increasing then writeln('Duong cheo chinh TANG')
    else writeln('Duong cheo chinh KHONG TANG');

    //Cau 6
    for i:= 1 to j do
      for j:= 1 to n - i + 1 do tongTGP:= tongTGP + A[i,j];
    writeln('Tong cac phan tu trong tam giac tren duong cheo phu: ',tongTGP);

    //Cau 7
    for i:= 1 to n do begin
        max:= 0;
        for j:= 1 to n do if A[j, i] > max
            then max:= A[j, i];
        writeln('Max cua cot ',i,' la ',max);
    end;

    //Cau 8

    //Cau 9
    for i:= 1 to n do begin
        countB:= 0;
        for j:= 1 to n do begin
            countB:= countB + 1;
            B[countB]:= A[i,j];
        end;
        
        for ll:= 2 to countB do begin
		    index:= B[ll];
		    j:= ll;
		    while ((j > 1) AND (B[j - 1] > index)) do begin
			    B[j]:= B[j - 1];
			    j:= j - 1;
		    end;
		    B[j]:= index;
        end;

        for j:= 1 to n do A[i,j]:= B[j];
    end;

    writeln('Mang sau khi sap xep cau 9:');
    for i:= 1 to n do begin
        for j:= 1 to n do write(A[i, j],'   ');
        writeln;
    end;

    

    //Cau 10

    //Cau 11
    for i:= 1 to n do
    for j:= 1 to n do
		if countg = 0 then begin
			countg:= countg + 1;
			g[countg]:= A[i,j];
			gg[countg]:= 1;
		end else begin
			finished:= False;
			for ll:= 1 to countg do
				if A[i,j] = g[ll] then begin
					gg[ll]:= gg[ll] + 1;
					finished:= True;
				end;	
			if not(finished) then begin
				countg:= countg + 1;
				g[countg]:= A[i,j];
				gg[countg]:= 1;
			end;
		end;
    max:= -1;
    for i:= 1 to countg do
        if gg[i] > max then begin
          max:= gg[i];
          maxi:= i;
        end;
    
    writeln('So xuat hien nhieu nhat la: ',g[maxi]);
    

    


    readln;
end.