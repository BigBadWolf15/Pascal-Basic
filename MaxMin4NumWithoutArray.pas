{
Created by Le Thanh Trung - 11 Ly 1 - 22/10/2020 
}
 program HelloWorld;

var
  a, b, c, d: LongInt;

begin
  writeln('Nhap lan luot 4 so tu ban phim, ngan cach nhau bang dau cach');
  readln(a, b, c, d);
  if a > b then 
  begin
    a := a + b;
    b := a - b;
    a := a - b;
  end; {b se luon >= a}
  
  if c < d then
  begin
    c := c + d;
    d := c - d;
    c := c - d;
  end; {c se luon >= d}
  
  if b < c then
  begin
    b := b + c;
    c := b - c;
    b := b - c;
  end; {b se luon >= c}
  
  if a > d then
  begin
    a := a + d;
    d := a - d;
    a := a - d;
  end; {a se luon <= d}
  
  writeln('Max: ', b, ' Min: ', a, ' Else: ', c, ' ', d);
  readln;
  
end.
