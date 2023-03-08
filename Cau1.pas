program tong_so_le;
uses crt;

type
    arr = array[1..101] of integer;
var
    n: integer;
    a: arr;

procedure ArrayInput(var n: integer; var a: arr);
var i: integer;
begin
    readln(n);
    for i := 1 to n do
        read(a[i]);
end;

function Check(var n: integer):boolean; { Hàm Check để tìm xem số đó có phải số lẻ hay không}
var Value: boolean;
begin
    Value := false;
    if n mod 2 <> 0 then Value := true; { Nếu n chia không hết cho 2 thì trả về True, chia hết cho 2 thì trả về False}

    Check:=Value;
end;

function TongSole(var n: integer; var a: arr):integer; { Hàm Tính Tổng }
var i: integer;
S: longint;
begin
    S := 0;
    for i := 1 to n do
        if Check(a[i]) then S := S + a[i];  {Ví dụ: Nếu check(a[i]) = True thì sẽ cộng giá trị a[i] vào S và ngược lại}
    
    TongSoLe:=S;
end;

begin
    ArrayInput(n, a);
    writeln(TongSole(n, a));
end.