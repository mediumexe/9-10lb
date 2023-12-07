function C3(A: array of Integer): Integer;
var 
  i: Integer;
  lastIndex: Integer;
begin
  lastIndex := 0; // Инициализируем индекс
  for i := 0 to Length(A) - 1 do
  begin
    if A[i] < 0 then
    begin
      lastIndex := i;
    end;
  end;
  C3 := lastIndex;
end;
var
  numbers: array of Integer;
  lastNegativeIndex: Integer;
begin
  SetLength(numbers, 5);
  numbers[0] := 3;
  numbers[1] := 2;
  numbers[2] := 1;
  numbers[3] := 2;
  numbers[4] := 5;
  lastNegativeIndex := C3(numbers);
  if lastNegativeIndex > 0 then
  begin
    WriteLn('Номер последнего отрицательного элемента: ', lastNegativeIndex);
  end
  else
  begin
    WriteLn('Отрицательных элементов нет');
  end;
end.
