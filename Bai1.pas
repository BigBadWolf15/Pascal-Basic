{
	Created by Le Thanh Trung - 14/01/2021
}
program Bai1;
uses crt;
var N, i, max, min, j, NumPrime, x, NumOccur, y, NumSth: Integer;
A, B, C, D :Array[1..100] of Integer;
Prime :Boolean;
begin
	clrscr;
	write('Nhap N= '); readln(N);
	//Cau a, super easy.... 
	for i:= 1 to N do begin
		repeat
			write('Nhap phan tu thu ',i,' = '); readln(A[i]);
		until (A[i] >= 0);
	end;

	//Cau b, easy...
	writeln;
	write('Day vua nhap la: ');
	for i:= 1 to N do begin
		write(A[i],' ');
	end;
	writeln;
	writeln;

	//Cau c, easy....
	min:= A[1]; //Neu min nhan gia tri ban dau la 0 thi min xuat ra se la 0 do toan so NGUYEN DUONG
	max:= 0;
	for i:= 1 to N do begin
		if A[i] > max then max:= A[i];
		if A[i] < min then min:= A[i];
	end;
	writeln('Max = ',max);
	writeln('Min = ',min);
	writeln;

	//Cau d, moi khi gap so nguyen to thi day no vao mang B, dem so phan tu cua mang B...
	NumPrime:= 0;
	for i:= 1 to N do begin
		prime:= True;
		for j:= 2 to round(sqrt(A[i])) do begin
			if A[i] mod j = 0 then prime:= False;
		end;

		if Prime and (A[i] >= 2) then begin
			NumPrime:= NumPrime + 1;
			B[NumPrime]:= A[i];//writeln(A[i]);
		end;
	end;
	writeln('Day co so so nguyen to la: ',NumPrime);
	write('Cac so nguyen to la: ');
	//Co the bo dong sau neu khong dung toi mang B
	for i:= 1 to NumPrime do write(B[i],' ');
	writeln;
	writeln;

	//Cau e, moi mot lan chung ta gap A[i] = x thi them i vao mang C, dem so phan tu cua mang C...
	NumOccur:= 0;
	write('Nhap so nguyen X:'); readln(x);
	for i:= 1 to N do begin
		if A[i] = x then begin
			NumOccur:= NumOccur + 1;
			C[NumOccur]:= i;//writeln(A[i]);
		end;
	end;
	writeln('So ',x,' xuat hien ',NumOccur,' lan o cac vi tri:');
	for i:= 1 to NumOccur do write(C[i],' ');//Co the bo
	writeln;
	writeln;

	//Cau f, y tuong la tao ra mot mang D moi chua cac phan tu cua A KHONG BAO GOM A[i] = y
	//Do la static array nen khong the thay doi gia tri
	//BAT BUOC phai tao mang D moi
	write('Nhap so nguyen Y: '); readln(y); NumSth:= 0;
	for i:= 1 to N do begin
		if A[i] <> y then begin
			NumSth:= NumSth + 1;
			D[NumSth]:= A[i];
		end;
	end;
	for i:= 1 to NumSth do write(D[i],' ');
	readln;
end.