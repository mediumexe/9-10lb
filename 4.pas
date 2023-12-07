program D4;
const
  SIZE = 5;
var
  A, B: array[1..SIZE] of Integer;
  sum1, sum2, i: Integer;
begin
  sum1 := 0;
  sum2 := 0;
  for i := 1 to SIZE do
  begin
    A[i] := Random(21) - 10;
    B[i] := Random(21) - 10;
    if A[i] > 0 then
      sum1 := sum1 + A[i];
    if B[i] > 0 then
      sum2 := sum2 + B[i];
  end;
  WriteLn('Массивы A и B:');
  for i := 1 to SIZE do
  begin
    Write(A[i], ' ');
  end;
  WriteLn;
  for i := 1 to SIZE do
  begin
    Write(B[i], ' ');
  end;
  WriteLn;
  if sum1 < sum2 then
  begin
    WriteLn('Сумма положительных элементов в первом массиве меньше. Умножаем его элементы на 10:');
    for i := 1 to SIZE do
    begin
      A[i] := A[i] * 10;
      Write(A[i], ' ');
    end;
  end
  else
  begin
    WriteLn('Сумма положительных элементов во втором массиве меньше. Умножаем его элементы на 10:');
    for i := 1 to SIZE do
    begin
      B[i] := B[i] * 10;
      Write(B[i], ' ');
    end;
  end;

end.
