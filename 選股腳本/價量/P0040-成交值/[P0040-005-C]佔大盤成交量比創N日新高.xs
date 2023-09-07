{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 佔大盤成交量比創N日新高
// 顯示名稱: 佔大盤成交量比創[5]日新高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(5); 

SetTotalBar(2);
Value1 = GetField("佔大盤成交量比");
if _p1 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleHighest(GetField("佔大盤成交量比")[1], _p1-1);
    if Value1 > Value2 then ret = 1;
end;
OutputField(1, Value1);