{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開高未太高且剛轉強（開盤漲跌幅介於N%～M%之間）
// 顯示名稱: 開高未太高且剛轉強（開盤漲跌幅介於[4]%到[7]%）
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 漲跌幅的下限值
// _p1數值: 3,4,5
// _p2參數: 漲跌幅的上限值
// _p2數值: 6,7,8
// 
input:_p1(4),_p2(7);
var:_PC(0),_5PC(0),_Count(0);
settotalBar(7);
_PC = GetField("收盤價") - GetField("參考價", "D");
_5PC = average(_PC, 5);
if GetFielddate("日期") <> GetFielddate("日期")[1] then _Count = 0 else _Count += 1;
if _Count >= 5-1 then begin
        condition1 = GetField("開盤價","D") > GetField("參考價", "D")*(1+_p1/100);//開高
        condition2 = GetField("參考價", "D") * (1+_p2/100) > GetField("開盤價","D");//未開太高
        condition3 = _PC cross Above _5PC;//轉強，目前漲跌點數突破近五期漲跌點數
end else begin
        condition1 = false;
        condition2 = false;
        condition3 = false;
end;
if condition1 and condition2 and condition3 then ret = 1;