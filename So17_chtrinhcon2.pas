program Chtrinhcon2;
var a, b :Real; 
    luachon, key  :char;

function add (num1, num2 :Real) :Real;
    begin
        add:= num1 + num2
    end;

function minus (num1, num2 :Real) :Real;
    begin
        minus:= num1 - num2
    end;

function multiply (num1, num2 :Real) :Real;
    begin
        multiply:= num1 * num2
    end;

function divide (num1, num2 :Real) :Real;
    begin
        if num2 <> 0 then divide:= num1 / num2
        else divide:= 0;
    end;

begin
    repeat
        write('Nhap so thu nhat: '); readln(a);
        write('Nhap so thu hai: '); readln(b);
        writeln('Chon phep tinh thuc hien:');
        writeln('1 - Phep cong');
        writeln('2 - Phep tru');
        writeln('3 - Phep nhan');
        writeln('4 - Phep chia');
        write('Lua chon cua ban la: '); readln(luachon);
        case luachon of
            '1': writeln('Ket qua la: ',add(a, b):6:2);
            '2': writeln('Ket qua la: ',minus(a, b):6:2);
            '3': writeln('Ket qua la: ',multiply(a, b):6:2);
            '4': begin
                if b = 0 then writeln('LOI!')
                else writeln('Ket qua la: ',divide(a, b):6:2);
            end;
        end;
        write('Ban co muon tiep tuc? Nhan "y" de tiep tuc '); readln(key);
    until key <> 'y';
    readln;
end.
