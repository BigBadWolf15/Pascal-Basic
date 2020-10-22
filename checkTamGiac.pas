program check_tamgiac;

var
  a, b, c, d, e, f: real;
  code: integer;
const inputPrecision = 10;{nhap so chu so chinh xac cua Input}

begin
  write('Nhap lan luot 3 canh cua tam giac, ngan boi dau cach:'); readln(a, b, c);
  code := 0;
  if (a * a + b * b = c * c) or (a * a + c * c = b * b) or (b * b + c * c = a * a) then code := 1;
  d:= sqr(a * a + b * b);
  e:= sqr(a * a + c * c);
  f:= sqr(b * b + c * c);
  if (round(inputPrecision*d)/inputPrecision = round(c)) or (round(inputPrecision*e)/inputPrecision = round(b)) or (round(inputPrecision*f)/inputPrecision = round(a)) then code:= 1;
  if (a = b) and (b = c) then code := 2;
  if (a = b) or (b = c) or (c = a) then code := 3;
  if (code = 1) and ((a = 0.5 * b) or (a = 0.5 * c) or (b = 0.5 * a) or (b = 0.5 * c) or (c = 0.5 * a) or (c = 0.5 * b)) then code := 4;
  if (a + b <= c) or (a + c <= b) or (b + c <= a) then code := -1;
  if code = 0 then writeln('Tam giac thuong!');
  if code = 1 then writeln('Tam giac vuong!');
  if code = 2 then writeln('Tam giac deu!');
  if code = 3 then writeln('Tam giac can!');
  if code = 4 then writeln('Tam giac vuong can!');
  if code = -1 then writeln('3 diem thang hang nha!');
  
end.
