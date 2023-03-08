program palindrome;
uses crt;
var s: string;

function reverse(var s:string):string; {Hàm đảo ngược xâu}
var i: integer;
st:string;
begin
    st:='';
    for i:=length(s) downto 1 do
        st := st + s[i];
    reverse:=st;
end;

function palindrome(s:string): boolean; {Hàm kiểm tra xem xâu có phải là xâu palindrome hay không}
var Flags: boolean;                     {Nếu hàm reverse ở trên trả về giá trị giống với s ban đầu}
begin                                   {Thì đó là xâu palindrome}
    Flags:=false;
    if(s = reverse(s)) then Flags:= true;
    palindrome:=Flags;
end;

begin
    readln(s);
    case palindrome(s) of
        true: write('YES');
        false: write('NO');
    end;
end.