program J8;

const
  R = 8;
  C = 8;

type
  B = array[1..R, 1..C] of Integer;
  A = array[1..R] of Integer;

var
  originalArray: B;
  resultArray: A;
  i, j: Integer;
  Found: Boolean;

begin

  for i := 1 to R do
  begin
    for j := 1 to C do
    begin
      originalArray[i, j] := Random(10); 
    end;
  end;


  for i := 1 to R do
  begin
    Found := False;
    for j := 1 to C - 1 do
    begin
      if (originalArray[i, j] + originalArray[i, j+1] = 7) then
      begin
        Found := True;
        Break; 
      end;
    end;

    if Found then
    begin
      resultArray[i] := 1;
    end
    else
    begin
      resultArray[i] := -1;
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
