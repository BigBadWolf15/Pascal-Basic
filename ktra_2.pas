{
	Created by Le Thanh Trung - 11 Ly 1 - 11/12/2020
}
program ktra2;//Test case: 1221, 12221, 13431
var n, n_temp, n_reverse: LongInt;
begin
	readln(n);
	n_reverse:= 0;
	n_temp:= n;

	while n_temp > 0 do begin
		n_reverse:= n_reverse * 10 + n_temp mod 10;
		//Dich chuyen chu so cu qua trai va chen chu so moi vao ben phai
		n_temp:= n_temp div 10; 
		//Cat chu so ben trai da lay
	end;

	if n = n_reverse then writeln('Doi xung!')
	else writeln('Khong doi xung!');

	readln;
end.