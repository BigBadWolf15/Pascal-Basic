{
Created by Le Thanh Trung - 11 Ly 1 - 14/11/2020
}
program Tong8;
uses crt;
var i, n: integer;
giaithua, sum: longInt;
begin
  clrscr;
  sum:= 0;
  giaithua:=1;
  write('Nhap N: '); readln(n);
  for i:= 1 to n do
  begin
    giaithua:= giaithua * i;
    sum:= sum + giaithua;
  end;
  
  writeln('Ket qua la: ',sum);
  readln;
end.