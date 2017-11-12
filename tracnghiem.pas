program tracnghiem;

uses crt;
var
  diem, i, luachon: integer;

begin
  clrscr;
  for i := 1 to 10 do
  begin
    clrscr;
    writeln('PHIEU KHAO SAT DANH GIA KHA NANG HOC TAP');
    writeln;
    case i of
      1: writeln(i, '. Ban co tinh tao trong lop khong ?');
      2: writeln(i, '. Ban co thay bai tap ve nha de khong ?');
      3: writeln(i, '. Ban co thay thay co giang bai de hieu khong ?');
      4: writeln(i, '. Ban co hieu bai tai lop khong ?');
      5: writeln(i, '. Ban co tap trung nghe giang khong ?');
      6: writeln(i, '. Ban co thuong xuyen lam bai tap ve nha khong ?');
      7: writeln(i, '. Ban co tim hieu bai them khong ?');
      8: writeln(i, '. Ban co thuong xuyen phat bieu khong ?');
      9: writeln(i, '. Ban co hoi bai cac ban khac khong ?');
      10: writeln(i, '. Ban co hoi thay co khi khong hieu khong ?');
    end;
    writeln;
    writeln('5. Luon luon');
    writeln('4. Thuong xuyen');
    writeln('3. Lau lau');
    writeln('2. Hiem khi');
    writeln('1. Khong bao gio');
    write('Ban nghi minh phu hop voi cai nao ? (Ghi so tu 1 den 5): '); readln(luachon);
    if luachon < 0 then luachon := 0;
    if luachon > 5 then luachon := 5;
    diem += luachon;
  end;
  if diem >= 41 then writeln('Ban la hoc sinh gioi, rat cham chi hoc tap !');
  if (diem < 41) and (diem >= 31) then writeln('Ban la hoc sinh kha, hoc hanh tuong doi tot nhung can co gang hon !');
  if diem < 31 then writeln('Ban can phai co gang nhieu hon nua trong hoc tap !');
  writeln;
  writeln('Programmed by @Louiscc');
  writeln('Press any key to exit');
  repeat delay(1) until KeyPressed
end.