{
Created by Le Thanh Trung - 11 Ly 1 - 14/11/2020
}
program Tong7;
uses crt;
var i, n: integer;
sum: Real;
begin
  clrscr;
  sum:= 1;
  write('Nhap N: '); readln(n);
  for i:= 1 to n - 1 do sum:= sum + 1/(i*(i+1));
  
  writeln('Ket qua la: ',sum:6:3);
  readln;
end.