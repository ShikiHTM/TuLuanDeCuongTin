program removeDigit;
uses crt;
var
s: string;
i: integer;

{Ý tưởng: thay vì xoá thì chỉ cần in ra ký tự thay vì ký tự chỗ}

function isDigit(s: string): boolean;   {Hàm này dùng để kiểm tra xem trong xâu có tồn tại ký tự số hay không}
var flags: boolean;
i: integer;
begin
    flags:=false;
    for i := 1 to length(s) do
        begin
        if(s[i] in ['0'..'9']) then flags:=true; {nếu có thì trả về true và dừng vòng lặp}
        break;
        end;
    isDigit:=flags;
end;

begin
    readln(s);

    for i:=1 to length(s) do
        if(not(isDigit(s[i]))) then write(s[i]);
end.