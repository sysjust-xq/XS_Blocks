{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 外資賣超佔成交量比創N日新低
// 顯示名稱: 外資賣超佔成交量比創[5]日新高
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,10,20,30,40,50,60,100,120
// 
input:_p1(5); 
SetTotalBar(_p1+2); 
If GetField("成交量") <> 0 then
Value1 =GetField("外資賣張")/GetField("成交量");
if Value1 >= 0 then return;
if _p1 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleLowest(Value1[1], _p1-1);
    if Value1 < Value2 and GetField("外資賣張") < 0 then ret = 1;
end;
OutputField(1, Value1);