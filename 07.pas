{Created by Le Thanh Trung - 03/11/2020}

program If7;

var
  CSM, CSC, songuoi, sotien, tieuthu: integer;

begin
  write('Nhap chi so nuoc cu: '); readln(CSC);
  write('Nhap chi so nuoc moi: '); readln(CSM);
  write('Nhap so nguoi dang ky: '); readln(songuoi);
  
  if (CSM > CSC) then 
  begin
    tieuthu := CSM - CSC;
    writeln('So nuoc da tieu thu: ', tieuthu);
    if (tieuthu < 4 * songuoi) then begin
      sotien := 4400 * tieuthu;
    end else sotien := 4400 * 4 * songuoi;
    
    tieuthu := tieuthu - 4 * songuoi;
    
    if (tieuthu > 0) and (tieuthu < 2 * songuoi) then begin
      sotien := sotien + 8300 * tieuthu;
    end else sotien := sotien + 8300 * 2 * songuoi;
    
    tieuthu := tieuthu - 2 * songuoi;
    
    if tieuthu > 0 then sotien := sotien + 10500 * tieuthu;
  
  end else writeln('Loi nhap du lieu, chuong trinh ket thuc!');
  
  writeln('So tien nuoc la: ', sotien);
  readln;
end.