program chtrinhcon3;
var luachon, key: char;
    a, b :LongInt;

function CoPhaiChan(number :LongInt) :Boolean;
    begin
        CoPhaiChan:= (number mod 2) = 0
    end;

procedure ChanLe(number :LongInt);
    begin
        if CoPhaiChan(number) then writeln(number,' la so CHAN!')
        else writeln(number,' la so LE!')
    end;

function NguyenTo(number :LongInt) :Boolean;
    var i :LongInt;
    begin
        if number < 2 then NguyenTo:= False
        else if number < 4 then NguyenTo:= True
        else if number mod 2 = 0 then NguyenTo:= False
        else begin
            NguyenTo:= True;
            i:= 3;
            while i <= round(sqrt(number)) + 1 do begin
                if number mod i = 0 then NguyenTo:= False;
                i:= i + 2;
            end;
        end;    
    end;

function HoanHao(number :LongInt) :Boolean;
    var i, tich, tong :LongInt;
    begin
        tich:= 1;
        tong:= 0;
        for i:= 1 to number - 1 do begin
            if number mod i = 0 then begin
                tich:= tich * i;
                tong:= tong + i;
            end;
        end;
        HoanHao:= (tich = tong);
    end;

function reverse(number :LongInt) :Boolean;
    var i, reversed, temp :LongInt;
    begin
        reversed:= 0;
        temp:= number;
        repeat
            i:= temp mod 10;
            reversed:= 10 * reversed + i;
            temp:= temp div 10;
        until temp = 0;
        reverse:= (number = reversed);
    end;

begin
    { Test cases
    ChanLe(15);
    ChanLe(16);
    ChanLe(0);
    writeln(NguyenTo(13));
    writeln(NguyenTo(2));
    writeln(NguyenTo(3));
    writeln(NguyenTo(0));
    writeln(NguyenTo(8));
    writeln(HoanHao(6));
    writeln(HoanHao(8));
    writeln(reverse(121));
    writeln(reverse(1331));
    writeln(reverse(1312));
    }

    readln;
end.