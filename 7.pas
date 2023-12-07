program ArrayConversion;

const
  R = 8;
  C = 6;

type
  B = array[1..R, 1..C] of Integer;
  A = array[1..R] of Integer;

var
  originalArray: B;
  resultArray: A;
  i, j: Integer;
  hasNegative: Boolean;

begin
  for i := 1 to R do
  begin
    for j := 1 to C do
    begin
      originalArray[i, j] := Random(21) - 10;
    end;
  end;

  for i := 1 to R do
  begin
    hasNegative := False;
    for j := 1 to C do
    begin
      if originalArray[i, j] < 0 then
      begin
        hasNegative := True;
        Break; 
      end;
    end;
    if hasNegative then
    begin
      resultArray[i] := -1;
    end
    else
    begin
      resultArray[i] := 1;
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
end.
