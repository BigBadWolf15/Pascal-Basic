program timthang;

uses crt;
var
  thang, nam: integer;

begin
  clrscr;
  write('Nhap nam hien tai: ');readln(nam);
  write('Nhap thang hien tai: ');readln(thang);
  case thang of 
    1, 3, 5, 7, 8, 10, 12: writeln('Thang nay co 31 ngay');
    4, 6, 9, 11: writeln('Thang nay co 30 ngay');
    2:
      begin
        if nam mod 4 = 0 then writeln('Thang nay co 29 ngay')
        else writeln('Thang nay co 28 ngay');
      end;
  
  else writeln('Nhap khong hop le');
  end;
  
  writeln('Press any key to exit');
  repeat delay(1) until KeyPressed;
end.