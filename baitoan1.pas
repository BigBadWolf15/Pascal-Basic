var
  i, n: integer;
  s: longint;
  a: array[1..1000] of integer;
  control: boolean;

begin
  control := false;
  for i := 1 to 1000 do a[i] := i;
  
  for n := 1 to 10 do
  begin
    
    for i := 1 to 1000 do
    begin
      if (control = false) and (a[i] <> 0) then
      begin
        a[i] := 0;//idk what it does here
        control := true;
      end
      else control := false
      
	  
	  
	  
    end;
  end;
  writeln(a[1]);
  writeln(a[2]);
  writeln(a[3]);
  writeln(a[4]);
  writeln(a[5]);
  writeln(a[6]);
  
end.