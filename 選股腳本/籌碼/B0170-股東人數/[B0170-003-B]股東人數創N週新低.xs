{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股東人數創N週新低
// 顯示名稱: 股東人數創[4]週新低
// 執行頻率: 週
// 
// _p1參數: 
// _p1數值: 4,8,12,16
// 
input:_p1(4); 

SetTotalBar(2);
Value1 = GetField("總持股人數");
if _p1 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleLowest(GetField("總持股人數")[1], _p1-1);
    if Value1 < Value2 then ret = 1;
end;
OutputField(1, Value1);