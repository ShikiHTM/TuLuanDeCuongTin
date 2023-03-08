program capsocong;
uses crt;
type arr = array[1..101] of integer;
var
n: integer;
a: arr;

procedure Input(var n: integer; var a: arr);
var i: integer;
begin
    readln(n);
    for i:=1 to n do;
        read(a[i]);
end;

function KT(var n: integer; var a: arr):boolean; { Hàm kiểm tra xem mảng có phải là cấp số cộng hay không}
var check:boolean;
i , d: integer;
begin
    check:=false;   {tạo biến check}
    d:=a[2] - a[1]; {tìm cộng sai. VD: a[2] - a[1] <=> 4 - 2 = 2, vậy cộng sai là 2}
    for i:=2 to n do
        if(a[i] + d = a[i+1]) then 
        begin
        check:=true;    {Nếu từ a[i] + d mà giống với a[i+1] thì đó là cấp số cộng}
        break;  {Thoát vòng lặp}
        end;
    KT:=check;
end;

begin
    Input(n, a);
    case KT(n, a) of
        True: write('Day la cap so cong');
        False: write('Day khong phai la cap so cong');
    end;
end.