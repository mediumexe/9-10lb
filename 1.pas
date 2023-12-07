function a1(A: array of Integer): Integer;
var 
  product, i: Integer;
begin
  product := 1;
  for i := 0 to Length(A) - 1 do
  begin
    if A[i] mod 2 = 0 then
    begin
      product := product * A[i];
    end;
  end;
  A1 := product;
end;
var
  numbers: array of Integer;
  i, result: Integer;
begin
  SetLength(numbers, 5);
  numbers[0] := 1;
  numbers[1] := 2;
  numbers[2] := 3;
  numbers[3] := 4;
  numbers[4] := 5;
  result := A1(numbers);
  WriteLn(result);
end.