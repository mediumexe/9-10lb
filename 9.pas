program M9;

const
  R = 8;
  C = 8;

type
  B = array[1..R, 1..C] of Integer;
  A = array[1..R] of Integer;

var
  originalArray: B;
  resultArray: A;
  i, j, sum, average: Integer;
  hasAverage: Boolean;

begin
  for i := 1 to R do
  begin
    for j := 1 to C do
    begin
      originalArray[i, j] := Random(100);
    end;
  end;

  for i := 1 to R do
  begin
    resultArray[i] := originalArray[i, 1]; 
    for j := 2 to C do
    begin
      if originalArray[i, j] < resultArray[i] then
      begin
        resultArray[i] := originalArray[i, j]; 
      end;
    end;
  end;

  WriteLn('Исходный массив:');
  for i := 1 to R do
  begin
    for j := 1 to C do
    begin
      Write(originalArray[i, j], ' ');
    end;
    WriteLn;
  end;
  WriteLn('Результирующий массив:');
  for i := 1 to R do
  begin
    Write(resultArray[i], ' ');
  end;
  WriteLn;
  sum := 0;
  for i := 1 to R do
  begin
    sum := sum + resultArray[i];
  end;

  average := sum div R; 
  hasAverage := false;
  for i := 1 to R do
  begin
    if resultArray[i] = average then
    begin
      hasAverage := true;
      Break;
    end;
  end;
  if hasAverage then
  begin
    WriteLn('Одномерный массив содержит свое среднее арифметическое ', average);
  end
  else
  begin
    WriteLn('Одномерный массив не содержит свое среднее арифметическое ', average);
  end;
end.
