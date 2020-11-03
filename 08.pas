{Created by Le Thanh Trung - 03/11/2020}
program If8;

var
  thang, nam, songay: integer;

begin
  write('Nhap thang: '); readln(thang);
  write('Nhap nam: '); readln(nam);
  
  case thang of
    1, 3, 5, 7, 8, 10, 12: songay := 31;
    4, 6, 9, 11: songay := 30;
  
    2:
      begin
        if (nam mod 400 = 0) or ((nam mod 4 = 0) and (nam mod 100 <> 0)) then
          songay := 29 else songay := 28;
      end;
      
  else writeln('So thang khong hop le!');
  end;
  writeln('Thang ', thang, ' nam ', nam, ' co so ngay la: ', songay, ' ngay.');
  readln;
end.