procedure B2(A: array of Integer; var minElement, maxNegativeElement, index: Integer);
var 
  i: Integer;
begin
  minElement := MaxInt;
  maxNegativeElement := -MaxInt;
  index := -1;
  for i := 0 to Length(A) - 1 do
  begin
    if abs(A[i]) < abs(minElement) then
    begin
      minElement := A[i];
      index := i;
    end;
    if (A[i] < 0) and (A[i] > maxNegativeElement) then
    begin
      maxNegativeElement := A[i];
    end;
  end;
end;
var
  numbers: array of Integer;
  minElement, maxNegativeElement, index: Integer;
begin
  SetLength(numbers, 5);
  numbers[0] := 1;
  numbers[1] := -8;
  numbers[2] := 3;
  numbers[3] := -4;
  numbers[4] := 5;
  B2(numbers, minElement, maxNegativeElement, index);
  WriteLn('Минимальный по модулю элемент: ', minElement, ', его индекс: ', index);
  WriteLn('Максимальный отрицательный элемент: ', maxNegativeElement);
end.
