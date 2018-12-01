(*

Programmed by Le Thanh Trung

*)

program gi_do;

uses crt;

var
  N, M: qword ;
  min, dem, chan, le, zero, tong, max, cat: byte;
  mode: integer;

begin(*vong lap chinh*)
  repeat
    clrscr;
    write('Nhap vao mot so NGUYEN: '); readln(N);
    writeln('Xin vui long chon 1 trong cac che do: ');
    writeln('Dem so chu so le: nhap so 1');
    writeln('Dem so chu so chan: nhap so 2');
    writeln('Dem so chu so khong: nhap so 3');
    writeln('Dem tat ca chu so: nhap so 4');
    writeln('Tim chu so be nhat: nhap so 5');
    writeln('Tim chu so lon nhat: nhap so 6');
    writeln('Tinh tong cac chu so: nhap so 7');
    writeln('De thoat chuong trinh: nhap so 0');
    write('Xin vui long cho biet ban chon chuc nang so: '); readln(mode);
    (* Ket thuc phan dat cau hoi cho USER, tien hanh cac tinh toan can thiet*)
    M := N; (*Gan N -> M de tranh su co*)

    Min := 9; Max := 0;

    while M <> 0 do

    begin
      cat := M mod 10; (*Chat tung so ra de kiem tra cac dk *)
      if cat mod 2 = 0 then chan := chan + 1;
      if cat mod 2 = 1 then le := le + 1;
      if cat = 0 then zero := zero + 1;
      if cat < min then min := cat;
      if cat > max then max := cat;
      tong := tong + cat;
      dem := dem + 1;
      M:= M div 10; (*Chat xong roi thi xoa so vua kiem tra*)
    end;

    (* Ket thuc qua trinh tinh toan, bat dau xuat ket qua*)
   if mode = 1 then writeln('So chu so le: ',le);
   if mode = 2 then writeln('So chu so chan: ',chan);
   if mode = 3 then writeln('So chu so 0: ',zero);
   if mode = 4 then writeln('So chu so : ',dem);
   if mode = 5 then writeln('Chu so be nhat: ',min);
   if mode = 6 then writeln('So chu lon nhat: ',max);
   if mode = 7 then writeln('Tong cac chu so: ',tong);
   writeln('Nhan phim bat ky de tiep tuc');

    readln;

  until mode = 0; (*Phan mem se thoat neu gia tri cua mode = 0*)
end.

