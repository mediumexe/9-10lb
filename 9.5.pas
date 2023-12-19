Program pr;
var 
v,z,b,k:integer;
 
a,n:array of integer;

Procedure ass(u:array of integer);
var
  c:integer;
begin
   writeln('Введите массив');
   for c:= 1 to 10 do
   readln(u[c]);
   writeln()
end;

Procedure  print_ass(u:array of integer);
var
  c:integer;
begin
   writeln('Массив');
   write('[',u[1]);
   for c:= 2 to 10 do
   write(', ', u[c]);
   write(']');
   writeln();
end;

Procedure countfive(u:array of integer; var l:integer);
var
  c:integer;
begin
for c:= 10 downto 1 do begin
  if u[c] mod 5 = 0 then begin
    l:= c;
  end;
end;

end;

Procedure maks(u:array of integer);
var
  c,x:integer;
begin
  for c:=1 to 9 do
    if u[c]>u[c+1] then
      x:=c;
  u[x]:=0
end;

Procedure multtwo(u:array of integer);
var
  c,x:integer;
begin
  for c:=10 downto 2 do
    if u[c-1]<u[c] then
      x:=c;
  for c:=x to 10 do
    u[c]:=u[c]*2;
end;

begin
  
b:=0;
k:=0;

v:=11;
SetLength(a, v);
ass(a);
SetLength(n, v);
ass(n);
print_ass(a);
print_ass(n);
countfive(a,b);
countfive(n,k);
writeln('mass idx=',b,' mass idx=',k);
if b < k then begin
  maks(a);
  multtwo(n);
end
else begin
  maks(n);
  multtwo(a);
end;
print_ass(a);
print_ass(n);
end.