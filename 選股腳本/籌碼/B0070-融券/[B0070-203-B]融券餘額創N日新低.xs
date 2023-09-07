{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融券餘額創N日新低
// 顯示名稱: 融券餘額創[10]日新低
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10,20,30,60
// 
input:_p1(10); 

SetTotalBar(2);
Value1 = GetField("融券餘額張數");
if _p1 <= 1 then begin
    ret = 1;
end else begin
    Value2 = SimpleLowest(GetField("融券餘額張數")[1], _p1-1);
    if Value1 < Value2 then ret = 1;
end;
OutputField(1, Value1);