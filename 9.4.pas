Program pr;
var 
v,z:integer;
 
a,n:array of integer;

Procedure  ass(u:array of integer);
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

Procedure  summ(var x:integer; u:array of integer);
var
  y:integer;
Begin
  if x <=0 then 
    x:=0;
for y:=2 to 10 do begin
if u[y]>=0 then
  x:=x+u[y];
end;
end;

Procedure  umnoshit(u:array of integer);
var
  c:integer;
begin
   for c:= 1 to 10 do
   u[c]:=u[c]*10;
end;


begin
v:=11;
SetLength(a, v);
ass(a);
SetLength(n, v);
ass(n);
print_ass(a);
print_ass(n);

v:=a[1];
summ(v,a);
writeln('Сумма первого массива ', v);

z:=n[1];
summ(z,n);
writeln('Сумма второго массива ', z);

if z<v then begin
umnoshit(a);
print_ass(a);
end
else
begin
umnoshit(n);
print_ass(n);
end;
end.