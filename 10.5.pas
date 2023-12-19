var
  a:array[1..8,1..8] of integer;
  two:array[1..8] of integer;
  b,c,dvig,executer,silver:integer;
  boling:boolean;
  
begin
  for b:=1 to 8 do
    for c:=1 to 8 do
      a[b,c]:= random(-5, 20);
  c:=1;
  dvig:=1;
  writeln(a);
  for b:=1 to 8 do begin
    executer:=a[dvig,1];
    for c:=1 to 8 do begin
      if (c+1 <=8) and (executer<a[b,c+1]) then
        executer:=a[b,c+1];
        boling:=True;
    end;
      for c:=1 to 8 do begin
        if (c+1 <=8) and (executer=a[b,c+1]) then begin
          silver:=silver+1;
          if silver=2 then
            boling:=False;
          end;
      end;
    if boling=True then
      two[dvig]:=1
    else
      two[dvig]:=-1;
    dvig:=dvig+1;
    silver:=0;
  end;
  writeln(two);
  end.