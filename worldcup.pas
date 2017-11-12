program World_Cup;

uses crt;
var
  nam: integer;

begin
  clrscr;
  writeln('CHUONG TRINH THONG BAO WORLD CUP');
  writeln('****************************************');
  write('Nhap nam hien tai: ');readln(nam);
  case nam mod 4 of
    1: writeln('Con 1 nam nua toi World Cup');
    2: writeln('Nam nay co World Cup');
    3: writeln('Nan truoc co World Cup')
  else writeln('2 nam nua moi toi World Cup');
  end;
  writeln('Press any key to exit');
  repeat delay(1) until KeyPressed
end.