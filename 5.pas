program E5;
const
  SIZE = 10;
var
  A, B: array[1..SIZE] of Integer;
  i, max1, maxIndex1, min2, minIndex2: integer;
  found: boolean;
begin
  for i := 1 to SIZE do
  begin
    A[i] := Random(20) + 1;
    B[i] := Random(20) + 1;
  end;
  found := False;
  max1 := 0;
  maxIndex1 := 1;
  min2 := B[1];
  minIndex2 := 1;
  for i := 1 to SIZE do
  begin
    if A[i] > max1 then
    begin
      max1 := A[i];
      maxIndex1 := i;
    end;
    if (A[i] mod 5 = 0) and not found then
    begin
      A[maxIndex1] := 0;
      found := True;
    end;
  end;
  for i := 1 to SIZE do
  begin
    if B[i] < min2 then
    begin
      min2 := B[i];
      minIndex2 := i;
    end;
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

  for i := minIndex2 + 1 to SIZE do
  begin
    B[i] := B[i] * 2;
  end;
  WriteLn('Результаты:');
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

end.
