{
Created by Le Thanh Trung - 11 Ly 1 - 14/11/2020
}
program Tong7;
uses crt;
var i, n, x: integer;
binhphuong, sum: longInt;
begin
  clrscr;
  sum:= 1;
  binhphuong:=1;
  write('Nhap X: '); readln(x);
  write('Nhap N: '); readln(n);
  for i:= 1 to n do
  begin
    binhphuong:= binhphuong * x;
    sum:= sum + binhphuong;
  end;
  
  writeln('Ket qua la: ',sum);
  readln;
end.